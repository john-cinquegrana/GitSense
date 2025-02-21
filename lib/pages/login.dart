import 'package:flutter/material.dart';
import 'package:gitsense/components/github_requests/user_query.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Login Page')),
      body: Query(
        options: QueryOptions(document: gql(authorInfoQuery)),
        builder: (result, {fetchMore, refetch}) {
          // Handle the case if the login has a bad exception to it
          if (result.hasException ||
              (result.isNotLoading && result.data == null)) {
            return Center(child: Text(result.exception.toString()));
          }

          // If the login is loading we will do nothing
          bool dataExists = result.isNotLoading && result.data != null;
          if (dataExists) {
            final data = result.data!['viewer'];
            final user = User(
              id: data['id'],
              email: data['email'],
              name: data['name'],
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
                Text('Welcome to GitSense', style: TextStyle(fontSize: 24)),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed:
                      dataExists
                          ? () {
                            context.go('/toprepos');
                          }
                          : null,
                  child: Text('See Top Repositories'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: dataExists ? () {} : null,
                  child: Text('Forgot Password'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
