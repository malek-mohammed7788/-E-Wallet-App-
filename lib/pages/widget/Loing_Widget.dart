import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';
import 'package:project_my/constants.dart';

Widget Text_Loing() => Text(
      'سجل دخولك/يك',
      style: GoogleFonts.readexPro(
          fontSize: 20, color: kPrimaryColor, fontWeight: FontWeight.bold),
    );

Widget Images_Body_App_Top() => Container(
      child: Image.asset(
        'assets/images/main_top.png',
      ),
    );

Widget Images_Body_App_Bottom() => Container(
      child: Image.asset(
        'assets/images/login_bottom.png',
      ),
    );

Widget Text_input_email(TextEditingController controllerPhoneNumber) => Container(
      padding: const EdgeInsets.fromLTRB(35, 300, 35, 0),
      child: TextField(
        controller: controllerPhoneNumber,
        obscureText: false,
        textAlign: TextAlign.center,
        cursorColor: Colors.purple,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "البريد الالكتروني",
          suffixIcon: Icon(
            Icons.smartphone,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );

Widget Json_Add_Signup() => Container(
      child: Lottie.asset('assets/json/add.json'),
    );

Widget Text_input_pass(TextEditingController controllerPassword) => Container(
      padding: const EdgeInsets.fromLTRB(35, 350, 35, 0),
      child:  TextField(
        controller: controllerPassword,
        obscureText: true,
        textAlign: TextAlign.center,
        cursorColor: Colors.purple,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.password),
          hintText: "كلمة السر",
          suffixIcon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          icon: Icon(
            Icons.visibility_outlined,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );

Widget Button_Open_facebook_account() => Container(
      child: GFButton(
        onPressed: () {},
        text: "تسجيل الدخول بستخدام",
        textStyle: GoogleFonts.readexPro(color: Colors.blueAccent),
        icon: const Icon(Icons.facebook),
        type: GFButtonType.outline2x,
        shape: GFButtonShape.pills,
        fullWidthButton: true,
      ),
    );

Widget Button_Open_whatsapp_account() => Container(
      child: GFButton(
        onPressed: () {},
        text: "تسجيل الدخول بستخدام",
        color: Colors.green,
        textStyle: GoogleFonts.readexPro(color: Colors.green),
        icon: const Icon(Icons.ac_unit),
        type: GFButtonType.outline2x,
        shape: GFButtonShape.pills,
        fullWidthButton: true,
      ),
    );

Widget Button_Open_apple_account() => Container(
      child: GFButton(
        onPressed: () {},
        text: "تسجيل الدخول بستخدام",
        color: Colors.black,
        textStyle: GoogleFonts.readexPro(color: Colors.black87),
        icon: const Icon(Icons.apple),
        type: GFButtonType.outline2x,
        shape: GFButtonShape.pills,
        fullWidthButton: true,
      ),
    );
