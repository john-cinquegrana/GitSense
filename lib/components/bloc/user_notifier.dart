import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Represents a user with an ID, email, and name.
class User {
  /// Creates a new user with the given [id], [email], and [name].
  User({required this.id, required this.email, required this.name});

  /// The unique identifier for the user.
  final String id;

  /// The email address of the user.
  final String email;

  /// The name of the user. This field is optional.
  final String? name;

  /// Compares this user to another user.
  ///
  /// Returns `true` if the [other] user has the same [id], [email], and [name].
  /// Returns `false` otherwise.
  bool equals(final User? other) {
    if (identical(this, other)) {
      return true;
    }

    if (other == null) {
      return false;
    }

    return other.id == id && other.email == email && other.name == name;
  }
}

/// A ChangeNotifier that manages the state of a User object.
class UserNotifier extends ChangeNotifier {
  /// The current user.
  User? _user;

  /// Gets the current user.
  User? get user => _user;

  /// Checks if there is a user.
  bool get hasUser => _user != null;

  /// Sets the user and notifies listeners if the user has changed.
  ///
  /// If the new user is the same as the current user, no notification is sent.
  ///
  /// [user] The new user to set.
  void setUser(final User? user) {
    // Compare the users and only update if they are different
    if (_user != null && _user!.equals(user)) {
      return;
    }
    _user = user;
    notifyListeners();
  }
}

/// Extension on BuildContext to provide easy access to UserNotifier.
extension UserExtension on BuildContext {
  /// Gets the UserNotifier from the context.
  UserNotifier get userInfo => watch<UserNotifier>();
}
