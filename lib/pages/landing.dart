import 'package:flutter/material.dart';

/// A stateless widget that represents the landing page of the application.
///
/// This page is displayed when the user first opens the app.
class LandingPage extends StatelessWidget {
  /// Creates a [LandingPage] widget.
  ///
  /// The [key] parameter is optional and can be used to uniquely identify
  /// this widget in the widget tree.
  const LandingPage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    // appBar: AppBar(title: Text('GitSense')),
    body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 100),
              Text(
                'Welcome to GitSense!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              Text(
                'This is a simple little app I am creating that will attach to '
                'the Github API and provide some cool insights into your '
                'recent activity.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ),
  );
}
