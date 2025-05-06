import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_my/constants.dart';
import 'package:project_my/pages/widget/Welcome_Widget.dart';

class Welcome_body extends StatefulWidget {
  const Welcome_body({Key? key}) : super(key: key);

  @override
  _Welcome_bodyState createState() => _Welcome_bodyState();
}

class _Welcome_bodyState extends State<Welcome_body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(200, 50, 10, 0),
                      child: Text_Welcome(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 15, 10, 0),
                      child: Text_body_Welcome(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 200, 50, 150),
                child: SizedBox(
                  height: size.height * 0.45,
                  child: Icon_Body(),
                ),
              ),
              Positioned(
                height: 150,
                top: 0,
                child: Images_Body_App_Top(),
              ),
              Positioned(
                  height: 120, bottom: 0, child: Images_Body_App_Bottom()),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 650, 100, 0),
                child: GFButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Loing');
                    },
                    text: "دخول",
                    textStyle: GoogleFonts.readexPro(color: Colors.blue),
                    shape: GFButtonShape.pills,
                    fullWidthButton: true,
                    type: GFButtonType.outline2x),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 700, 100, 0),
                child: GFButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Signup');
                    },
                    text: "تسجيل",
                    textStyle: GoogleFonts.readexPro(color: Colors.deepPurple),
                    color: kPrimaryColor,
                    shape: GFButtonShape.pills,
                    fullWidthButton: true,
                    type: GFButtonType.outline2x),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
