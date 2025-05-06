import 'package:flutter/material.dart';
import 'package:project_my/pages/body/Welcome_body.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Welcome_body(),
    );
  }
}
