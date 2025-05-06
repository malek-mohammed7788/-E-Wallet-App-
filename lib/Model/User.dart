import 'dart:io';

class User {
  String? fullname;
  String? email;

  User({String? fullname, String? email});

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
      fullname: data['fullname_user'],
      email: data['email_user'],
    );
  }
}
