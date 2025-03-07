import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Simple class to hold all the user information we are getting back
class User {
  User({required this.id, required this.email, required this.name});

  final String id;
  final String email;
  final String? name;

  bool equals(final User? other) {
    if (identical(this, other)) return true;

    // We don't need to check this one since we know they're not identical
    if (other == null) return false;

    return other.id == id && other.email == email && other.name == name;
  }
}

class UserNotifier extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  bool get hasUser => _user != null;

  void setUser(final User? user) {
    // Compare the users and only update if they are different
    if (_user != null && _user!.equals(user)) {
      return;
    }
    _user = user;
    notifyListeners();
  }
}

extension UserExtension on BuildContext {
  UserNotifier get userInfo => watch<UserNotifier>();
}
