import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gitsense/pages/landing.dart';
import 'package:gitsense/pages/login.dart';
import 'package:gitsense/pages/top_repository_showcase.dart';
import 'package:gitsense/theme.dart';
import 'package:gitsense/util/github_graphql.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:gitsense/util/logging.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  logger.i('Running main function');
  await initHiveForFlutter();
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late GraphQLClient client;
  late TextTheme textTheme;
  late MaterialTheme theme;
  late GoRouter router;

  @override
  void initState() {
    super.initState();

    // Link to github
    client = connectToGithub();

    // Use with Google Fonts package to use downloadable fonts
    textTheme = createTextTheme(context, "Lora", "Ubuntu");

    theme = MaterialTheme(textTheme);

    // Create the router for the pages we will want
    router = GoRouter(
      initialLocation: '/login',
      routes: [
        GoRoute(path: '/', builder: (context, state) => LandingPage()),
        GoRoute(path: '/login', builder: (context, state) => LoginPage()),
        GoRoute(
          path: '/toprepos',
          builder: (context, state) => TopRepositoryPage(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Log out that we're starting
    logger.i("Starting up GitSense");

    return ThemeProvider(
      child: Consumer<ThemeNotifier>(
        builder: (context, notifier, widget) {
          // Pull the brightness out of the consumer
          final brightness = notifier._brightness;
          // Get the theme to show off in our cool app
          final currentTheme =
              brightness == Brightness.light ? theme.light() : theme.dark();
          return MaterialApp.router(
            title: 'GitSense',
            theme: currentTheme,
            routerConfig: router,
            builder:
                (context, child) =>
                    GlobalProviders(client: client, child: child!),
          );
        },
      ),
    );
  }
}

class GlobalProviders extends StatefulWidget {
  const GlobalProviders({required this.child, required this.client, super.key});

  final Widget child;
  final GraphQLClient client;

  @override
  State<GlobalProviders> createState() => _GlobalProvidersState();
}

class _GlobalProvidersState extends State<GlobalProviders> {
  late ValueNotifier<GraphQLClient> _clientNotifier;

  @override
  void initState() {
    super.initState();
    _clientNotifier = ValueNotifier(widget.client);
  }

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: _clientNotifier,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<UserNotifier>(
            create: (context) => UserNotifier(),
          ),
        ],
        child: widget.child,
      ),
    );
  }
}

class ThemeNotifier extends ChangeNotifier {
  Brightness _brightness;

  ThemeNotifier(this._brightness);

  Brightness get brightness => _brightness;

  void toggleBrightness() {
    if (_brightness == Brightness.light) {
      _brightness = Brightness.dark;
    } else {
      _brightness = Brightness.light;
    }
    notifyListeners();
  }

  void setBrightness(Brightness brightness) {
    _brightness = brightness;
    notifyListeners();
  }
}

class ThemeProvider extends StatefulWidget {
  const ThemeProvider({required this.child, super.key});

  final Widget child;

  @override
  State<ThemeProvider> createState() => _ThemeProviderState();
}

class _ThemeProviderState extends State<ThemeProvider> {
  late ThemeNotifier _themeNotifier;

  @override
  void initState() {
    super.initState();
    logger.i('New Theme Notifier.');
    _themeNotifier = ThemeNotifier(Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeNotifier>(
      create: (context) => _themeNotifier,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _themeNotifier.dispose();
    super.dispose();
  }
}
