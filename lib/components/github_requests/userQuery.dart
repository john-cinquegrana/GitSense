import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const authorInfoQuery = r"""
query Viewer {
    viewer {
        id
        name
        email
        websiteUrl
    }
}
""";

/// Simple class to hold all the user information we are getting back
class User {
  User({required this.id, required this.email, required this.name});

  final String id;
  final String email;
  final String name;
}

class UserNotifier extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  bool get hasUser => _user != null;

  void setUser(User? user) {
    _user = user;
    notifyListeners();
  }
}

extension UserExtension on BuildContext {
  UserNotifier get userInfo => watch<UserNotifier>();
}
