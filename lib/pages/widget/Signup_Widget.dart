import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';
import 'package:project_my/constants.dart';

Widget Text_Loing() => Text(
      'أدرج بياناتك/يك',
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

Widget Icon_Body() => Container(
      child: SvgPicture.asset(
        'assets/icons/login.svg',
      ),
    );

Widget Text_input_name(TextEditingController fullname) => Container(
      padding: const EdgeInsets.fromLTRB(35, 200, 35, 0),
      child:  TextField(
        obscureText: false,
        controller: fullname,
        cursorColor: Colors.purple,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: 'أسمك/يك',
          suffixIcon: Icon(
            Icons.drive_file_rename_outline,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );

Widget Text_input_pass(TextEditingController password) => Container(
      padding: const EdgeInsets.fromLTRB(35, 250, 35, 0),
      child:  TextField(
        controller: password,
        obscureText: true,
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

Widget Text_input_email(TextEditingController email) => Container(
      padding: const EdgeInsets.fromLTRB(35, 300, 35, 0),
      child: TextField(
        controller: email,
        obscureText: false,
        cursorColor: Colors.purple,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "البريدالالكتروني",
          suffixIcon: Icon(
            Icons.mail,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );

Widget Text_input_phone(TextEditingController phonenumber) => Container(
      padding: const EdgeInsets.fromLTRB(35, 350, 35, 0),
      child:  TextField(
        controller: phonenumber,
        obscureText: false,
        cursorColor: Colors.purple,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.phone),
          hintText: "رقم الهاتف",
          suffixIcon: Icon(
            Icons.smartphone,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );

Widget Button_Open_facebook_account() => Container(
      child: GFButton(
        onPressed: () {},
        text: "تسجيل بستخدام",
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
        text: "تسجيل بستخدام",
        color: Colors.green,
        textStyle: GoogleFonts.readexPro(color: Colors.green),
        icon: const Icon(Icons.cabin_outlined),
        type: GFButtonType.outline2x,
        shape: GFButtonShape.pills,
        fullWidthButton: true,
      ),
    );

Widget Button_Open_apple_account() => Container(
      child: GFButton(
        onPressed: () {},
        text: "تسجيل بستخدام",
        color: Colors.black,
        textStyle: GoogleFonts.readexPro(color: Colors.black87),
        icon: const Icon(Icons.apple),
        type: GFButtonType.outline2x,
        shape: GFButtonShape.pills,
        fullWidthButton: true,
      ),
    );

Widget Json_Add_Signup() => Container(
      child: Lottie.asset('assets/json/add.json'),
    );
