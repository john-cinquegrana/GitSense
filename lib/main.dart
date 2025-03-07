import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:gitsense/pages/landing.dart';
import 'package:gitsense/pages/login.dart';
import 'package:gitsense/pages/top_repository_showcase.dart';
import 'package:gitsense/theme.dart';
import 'package:gitsense/util/github_graphql.dart';
import 'package:gitsense/util/logging.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

void main() async {
  logger.i('Running main function');
  await initHiveForFlutter();
  await dotenv.load();
  runApp(const MainApp());
}

/// The top level app shown here
class MainApp extends StatefulWidget {
  /// Creates the whole app
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
    textTheme = createTextTheme(context, 'Lora', 'Ubuntu');

    theme = MaterialTheme(textTheme);

    // Create the router for the pages we will want
    router = GoRouter(
      initialLocation: '/login',
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder:
              (final BuildContext context, final GoRouterState state) =>
                  const LandingPage(),
        ),
        GoRoute(
          path: '/login',
          builder:
              (final BuildContext context, final GoRouterState state) =>
                  const LoginPage(),
        ),
        GoRoute(
          path: '/toprepos',
          builder:
              (final BuildContext context, final GoRouterState state) =>
                  const TopRepositoryPage(),
        ),
      ],
    );
  }

  @override
  Widget build(final BuildContext context) {
    // Log out that we're starting
    logger.i('Starting up GitSense');

    return ThemeProvider(
      child: Consumer<ThemeNotifier>(
        builder: (
          final BuildContext context,
          final ThemeNotifier notifier,
          final Widget? widget,
        ) {
          // Pull the brightness out of the consumer
          final Brightness brightness = notifier._brightness;
          // Get the theme to show off in our cool app
          final ThemeData currentTheme =
              brightness == Brightness.light ? theme.light() : theme.dark();
          return MaterialApp.router(
            title: 'GitSense',
            theme: currentTheme,
            routerConfig: router,
            builder:
                (final BuildContext context, final Widget? child) =>
                    GlobalProviders(client: client, child: child!),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<GraphQLClient>('client', client))
      ..add(DiagnosticsProperty<TextTheme>('textTheme', textTheme))
      ..add(DiagnosticsProperty<MaterialTheme>('theme', theme))
      ..add(DiagnosticsProperty<GoRouter>('router', router));
  }
}

/// A widget that provides global providers to its child widget.
///
/// This widget is used to wrap the entire application with providers that
/// are needed globally.
class GlobalProviders extends StatefulWidget {
  /// Creates a [GlobalProviders] widget.
  ///
  /// The [child] and [client] parameters must not be null.
  const GlobalProviders({required this.child, required this.client, super.key});

  /// The child widget that will have access to the global providers.
  final Widget child;

  /// The GraphQL client used for making GraphQL requests.
  final GraphQLClient client;

  @override
  State<GlobalProviders> createState() => _GlobalProvidersState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<GraphQLClient>('client', client));
  }
}

class _GlobalProvidersState extends State<GlobalProviders> {
  late ValueNotifier<GraphQLClient> _clientNotifier;

  @override
  void initState() {
    super.initState();
    _clientNotifier = ValueNotifier<GraphQLClient>(widget.client);
  }

  @override
  Widget build(final BuildContext context) => GraphQLProvider(
    client: _clientNotifier,
    child: MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider<UserNotifier>(
          create: (final BuildContext context) => UserNotifier(),
        ),
      ],
      child: widget.child,
    ),
  );
}

/// A ChangeNotifier that manages the theme brightness (light or dark).
class ThemeNotifier extends ChangeNotifier {
  /// Creates a ThemeNotifier with the given initial brightness.
  ThemeNotifier(this._brightness);

  Brightness _brightness;

  /// Gets the current brightness.
  Brightness get brightness => _brightness;

  /// Toggles the brightness between light and dark.
  void toggleBrightness() {
    if (_brightness == Brightness.light) {
      _brightness = Brightness.dark;
    } else {
      _brightness = Brightness.light;
    }
    notifyListeners();
  }

  /// Sets the brightness to the given value.
  ///
  /// [brightness] The new brightness value.
  void setBrightness(final Brightness brightness) {
    _brightness = brightness;
    notifyListeners();
  }
}

/// A StatefulWidget that provides a theme to its child widget.
class ThemeProvider extends StatefulWidget {
  /// Creates a ThemeProvider with the given child widget.
  const ThemeProvider({required this.child, super.key});

  /// The child shown below this widget
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
  Widget build(final BuildContext context) =>
      ChangeNotifierProvider<ThemeNotifier>(
        create: (final BuildContext context) => _themeNotifier,
        child: widget.child,
      );

  @override
  void dispose() {
    _themeNotifier.dispose();
    super.dispose();
  }
}
