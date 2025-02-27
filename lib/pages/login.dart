import 'package:flutter/material.dart';
import 'package:gitsense/components/bloc/user_notifier.dart';
import 'package:gitsense/graphql/queries/user.graphql.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Login Page')),
      body: Query$User$Widget(
        builder: (result, {fetchMore, refetch}) {
          // Handle the case if the login has a bad exception to it
          if (result.hasException ||
              (result.isNotLoading && result.data == null)) {
            return Center(child: Text(result.exception.toString()));
          }

          // If the login is loading we will do nothing
          bool dataExists = result.isNotLoading && result.data != null;
          if (dataExists) {
            final data = result.parsedData!;
            final user = User(
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
                Text('Welcome to GitSense', style: TextStyle(fontSize: 24)),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed:
                      dataExists
                          ? () {
                            context.push('/toprepos');
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
