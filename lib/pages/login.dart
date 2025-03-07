import 'package:flutter/material.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:gitsense/graphql/queries/user.graphql.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql/src/core/query_result.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    // appBar: AppBar(title: Text('Login Page')),
    body: Query$User$Widget(
      builder: (
        final QueryResult<Query$User> result, {
        final fetchMore,
        final refetch,
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
                    dataExists
                        ? () {
                          context.push('/toprepos');
                        }
                        : null,
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
