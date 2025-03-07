import 'package:flutter/material.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:gitsense/graphql/queries/user.graphql.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

/// A stateless widget that represents the login page of the application.
///
/// This page is responsible for providing the user interface for user login.
class LoginPage extends StatelessWidget {
  /// Creates a new instance of [LoginPage].
  ///
  /// The [key] parameter is used to uniquely identify this widget in the widget
  /// tree.
  const LoginPage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    // appBar: AppBar(title: Text('Login Page')),
    body: Query$User$Widget(
      builder: (
        final QueryResult<Query$User> result, {
        final Future<QueryResult<Query$User>> Function(FetchMoreOptions)?
        fetchMore,
        final Future<QueryResult<Query$User>?> Function()? refetch,
      }) {
        // Handle the case if the login has a bad exception to it
        if (result.hasException ||
            (result.isNotLoading && result.data == null)) {
          return Center(child: Text(result.exception.toString()));
        }

        // If the login is loading we will do nothing
        final bool dataExists =
            result.isNotLoading && result.parsedData != null;
        if (dataExists) {
          final Query$User data = result.parsedData!;
          final User user = User(
            id: data.viewer.id,
            email: data.viewer.email,
            name: data.viewer.name,
          );

          final UserNotifier userNotifier = context.read<UserNotifier>();

          WidgetsBinding.instance.addPostFrameCallback((_) {
            userNotifier.setUser(user);
          });
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Welcome to GitSense', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed:
                    dataExists ? () async => context.push('/toprepos') : null,
                child: const Text('See Top Repositories'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: dataExists ? () {} : null,
                child: const Text('Forgot Password'),
              ),
            ],
          ),
        );
      },
    ),
  );
}
