import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/Home_Widget.dart';


class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 5,
          top: 50,
          width: 200,
          child: Text_title_price(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(250, 150, 0, 0),
          child: Text_title_Price_title(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(250, 420, 0, 0),
          child: Text_title_Price_button(),
        ),
        Positioned(
          height: 150,
          top: 0,
          child: Images_Body_App_Top(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 200, 10, 0),
          child: App_Images_title(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 470, 10, 0),
          child: App_Images_center(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 690, 10, 0),
          child: Container(
            child: GFButton(
              onPressed: () {
                show_n(context);
              },
              text: 'تأكيد شحن الرصيد عبر النجم',
              color: Colors.redAccent,
              textStyle: GoogleFonts.readexPro(color: Colors.white),
              icon: const Icon(Icons.favorite_border),
              type: GFButtonType.solid,
              fullWidthButton: true,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 730, 10, 0),
            child: Container(
              child: GFButton(
                onPressed: () {
                  show_k(context);
                },
                text: 'تأكيد شحن الرصيد عبر الكريمي',
                color: Colors.indigoAccent,
                textStyle: GoogleFonts.readexPro(color: Colors.white),
                icon: const Icon(Icons.favorite_border),
                type: GFButtonType.solid,
                fullWidthButton: true,
              ),
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 770, 10, 0),
            child: Container(
              child: GFButton(
                onPressed: () {
                  show_inforamtion(context);
                },
                text: 'معلومات عن طريقة شحن',
                color: Colors.indigo,
                textStyle: GoogleFonts.readexPro(color: Colors.white),
                icon: const Icon(Icons.help_outline_sharp),
                type: GFButtonType.solid,
                fullWidthButton: true,
              ),
            )),
      ],
    );
  }
}

