import 'package:flutter/material.dart';
import 'package:gitsense/pages/landing.dart';
import 'package:gitsense/pages/login.dart';
import 'package:gitsense/pages/top_repository_showcase.dart';
import 'package:gitsense/theme.dart';
import 'package:gitsense/util/github_graphql.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Link to github
    GraphQLClient client = connectToGithub();

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Lora", "Ubuntu");

    MaterialTheme theme = MaterialTheme(textTheme);

    // Create the router for the pages we will want
    final GoRouter router = GoRouter(
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

    return ThemeProvider(
      child: Builder(
        builder: (context) {
          final brightness = context.read<ThemeNotifier>()._brightness;
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

class ThemeProvider extends StatelessWidget {
  const ThemeProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final brightness = Brightness.dark;
    return ChangeNotifierProvider<ThemeNotifier>(
      create: (context) => ThemeNotifier(brightness),
      child: child,
    );
  }
}
