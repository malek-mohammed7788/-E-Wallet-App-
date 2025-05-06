import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_my/constants.dart';
import 'package:project_my/pages/widget/Signup_Widget.dart';
import '../../Firebase/firebase_atuh_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Signup_body extends StatefulWidget {
  const Signup_body({Key? key}) : super(key: key);

  @override
  _Signup_bodyState createState() => _Signup_bodyState();
}

class _Signup_bodyState extends State<Signup_body> {
  bool isChecked = false;
  bool isCheckedChecked = false;
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone_number = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isConnected = false;

  void _signUp() async {
    String _email = email.text;
    String _username = fullname.text;
    String _phonenumber = phone_number.text;
    String _password = password.text;

    User? user = await _auth.signUpWithEmailAndPassword(_email, _password);

    if (user != null) {
      if(isCheckedChecked == true){
        print("User is successfully created");
        Navigator.pushNamed(context, "/Home");
        print(isCheckedChecked);
        Fluttertoast.showToast(
          msg: 'مرحبا بك في تطبيق 911 كارد',
          backgroundColor: Colors.green,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_SHORT,
        );
      }
      else
        {
          Fluttertoast.showToast(
            backgroundColor: Colors.indigo,
            textColor: Colors.white,
            msg: 'وافق عل الصلاحيات من فضلك',
            toastLength: Toast.LENGTH_SHORT,
          );
        }

    } else {
      print("Some error happend");
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'هناك خطأ تحقق من البيانات المدخلة',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
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
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  Stack(
      children: [
        Expanded( // Wrap the Column with an Expanded widget
          child: Column(
            children: <Widget>[
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
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 415, 90, 0),
              child: GFCheckboxListTile(
                title: Text(
                  'موافقة على شروط الخدمة',
                  style: GoogleFonts.readexPro(fontSize: 13),
                ),
                size: 20,
                activeBgColor: Colors.green,
                type: GFCheckboxType.circle,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                  isCheckedChecked = value;
                },
                value: isChecked,
                inactiveIcon: null,
              ),
            ),
          ],
        ),
        Positioned(child: Text_input_name(fullname)),
        Positioned(child: Text_input_email(email)),
        Positioned(child: Text_input_pass(phone_number)),
        Positioned(child: Text_input_phone(password)),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 500, 100, 0),
            child: GFButton(
                onPressed: () {
                  _signUp();
                },
                text: "تسجيل",
                textStyle:
                GoogleFonts.readexPro(color: Colors.deepPurple),
                color: kPrimaryColor,
                shape: GFButtonShape.pills,
                fullWidthButton: true,
                type: GFButtonType.outline2x),
          ),
        ), //زر التسجيل
        Positioned(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 550, 100, 0),
            child: Button_Open_facebook_account(),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 600, 100, 0),
            child: Button_Open_whatsapp_account(),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 650, 100, 0),
            child: Button_Open_apple_account(),
          ),
        ),
      ],
    );
  }
}
