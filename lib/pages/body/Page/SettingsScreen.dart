import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/Home_Widget.dart';




class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: 150,
          top: 0,
          child: Images_Body_App_Top(),
        ),
        Positioned(
          right: 5,
          top: 50,
          width: 200,
          child: Text_title_seting(),
        ),
        Positioned(
          right: 145,
          top: 100,
          width: 300,
          height: 200,
          child: Images_Setting_Top(),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(100, 350, 90, 0),
            child: Button_Profile()),
        Padding(
            padding: const EdgeInsets.fromLTRB(100, 400, 90, 0),
            child: Container(
              child: GFButton(
                onPressed: () {
                  show_setting_open_tools_others(context);
                },
                color: Colors.deepPurple,
                text: 'إعدادات اخرى للتطبيق',
                textStyle: GoogleFonts.readexPro(color: Colors.white),
                enableFeedback: false,
                icon: const Icon(Icons.settings),
                type: GFButtonType.solid,
                fullWidthButton: true,
              ),
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(100, 450, 90, 0),
            child: Button_Call_help()),
        Padding(
            padding: const EdgeInsets.fromLTRB(100, 500, 90, 0),
            child: Button_Massges()),
        Padding(
            padding: const EdgeInsets.fromLTRB(150, 600, 0, 0),
            child: Text_info_Dev()),
        Padding(
            padding: const EdgeInsets.fromLTRB(185, 625, 70, 0),
            child: Setings_log_App()),
        Padding(
            padding: const EdgeInsets.fromLTRB(190, 675, 70, 0),
            child: Text_info_app_ver()),
        Padding(
            padding: const EdgeInsets.fromLTRB(150, 700, 70, 0),
            child: Text_dev_my()),
        Padding(
            padding: const EdgeInsets.fromLTRB(165, 720, 70, 0),
            child: Text_dev_my_number_mobiel()),
        const Padding(
            padding: EdgeInsets.fromLTRB(140, 750, 70, 0),
            child: Social_button())
      ],
    );
  }
}