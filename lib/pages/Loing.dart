import 'package:flutter/material.dart';
import 'package:project_my/pages/body/Loing_body.dart';

class Loing extends StatefulWidget {
  const Loing({Key? key}) : super(key: key);

  @override
  _LoingState createState() => _LoingState();
}

class _LoingState extends State<Loing> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Loing_body(),
    );
  }
}
