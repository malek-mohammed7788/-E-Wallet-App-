import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_my/constants.dart';

Widget Text_Welcome() => Text(
      'مرحبا بك/بيك في مالك كارد',
      textDirection: TextDirection.rtl,
      style: GoogleFonts.readexPro(
          fontSize: 22, color: kPrimaryColor, fontWeight: FontWeight.bold),
    );

Widget Text_body_Welcome() => Text(
      'تطبيق الأول في اليمن في تقديم خدمة البطاقة الإلكترونية',
      textDirection: TextDirection.rtl,
      style: GoogleFonts.readexPro(fontSize: 18, color: kPrimaryColor),
    );

Widget Images_Body_App_Top() => Container(
      child: Image.asset(
        'assets/images/main_top.png',
      ),
    );

Widget Images_Body_App_Bottom() => Container(
      child: Image.asset(
        'assets/images/main_bottom.png',
      ),
    );

Widget Icon_Body() => Container(
      child: SvgPicture.asset(
        'assets/icons/chat.svg',
      ),
    );
