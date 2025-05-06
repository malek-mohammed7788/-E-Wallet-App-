import 'package:flutter/material.dart';
import 'package:project_my/pages/body/Signup_body.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Signup_body(),
    );
  }
}
