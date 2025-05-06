import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_my/pages/widget/Loing_Widget.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../Api/Login.dart';
import '../../Firebase/Firebase_Share_Data.dart';
import '../../Firebase/firebase_atuh_service.dart';
import '../../constants.dart';

class Loing_body extends StatefulWidget {
  const Loing_body({Key? key}) : super(key: key);

  @override
  State<Loing_body> createState() => _Loing_bodyState();
}

class _Loing_bodyState extends State<Loing_body> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  LoginController r = LoginController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool isConnected = false;
  void ProcessLogin() {
    try {
      print(" is data send to program | " + _email.text + _password.text);
      r.login(_email.text, _password.text);
      if (r.checkLogin == true) {
        Fluttertoast.showToast(
          msg: 'Login Successful',
          backgroundColor: Colors.green,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_SHORT,
        );
        showPageScreen();
      } else {
        Fluttertoast.showToast(
          backgroundColor: Colors.red,
          textColor: Colors.white,
          msg: 'Username and password invalid',
          toastLength: Toast.LENGTH_SHORT,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        backgroundColor: Colors.indigo,
        textColor: Colors.white,
        msg: 'error proessing loing app',
        toastLength: Toast.LENGTH_SHORT,
      );
      print("check the code the ");
    }
  }

  showPageScreen() {
    Navigator.of(context).pushNamed('/Home');
    /*
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SigupScreen()));*/
  }

  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        isConnected = false;
      });
    } else {
      setState(() {
        isConnected = true;
      });
    }
  }

  @override
  void initState() {
    checkInternetConnection();
    super.initState();
  }

  void _LoginIn() async {
    String email = _email.text;
    String password = _password.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);
    AuthService().signIn(email, password);
    if (user != null) {
      print("User is successfully signedIn");
      Fluttertoast.showToast(
        msg: 'مرحبا بك في تطبيق 911 كارد',
        backgroundColor: Colors.green,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.of(context).pushNamed('/Home');
      void getEmail() {
        emailUser = AuthService().getEmail().toString();
        print("email is "+emailUser.toString());
      }
      getEmail();
    } else {
      print("Some error happend");
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'اسم المستخدم او كلمة سر غير قم بتحقق منها',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          // Wrap the Column with an Expanded widget
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(240, 50, 0, 0),
                  child: Text_Loing(),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          height: 150,
          top: 0,
          child: Images_Body_App_Top(),
        ),
        Positioned(
            height: 100, bottom: 0, right: 0, child: Images_Body_App_Bottom()),
        Positioned(child: Text_input_email(_email)),
        Positioned(child: Text_input_pass(_password)),
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 450, 100, 0),
          child: GFButton(
              onPressed: () {
                print(isConnected);
                if (isConnected) {
                  _LoginIn();
                } else {
                  Fluttertoast.showToast(
                    msg: 'لايوجد اتصال في الانترنت قم بتحقق من الاتصال من فضلك',
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    toastLength: Toast.LENGTH_SHORT,
                  );
                }
              },
              text: "دخول",
              textStyle: GoogleFonts.readexPro(color: Colors.blue),
              shape: GFButtonShape.pills,
              fullWidthButton: true,
              type: GFButtonType.outline2x),
        ),
        Positioned(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(100, 500, 100, 0),
              child: Button_Open_facebook_account()),
        ),
        Positioned(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(100, 550, 100, 0),
              child: Button_Open_whatsapp_account()),
        ),
        Positioned(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(100, 600, 100, 0),
              child: Button_Open_apple_account()),
        ),
      ],
    );
  }
}
