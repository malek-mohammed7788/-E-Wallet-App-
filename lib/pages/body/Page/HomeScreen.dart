import 'package:flutter/material.dart';
import '../../widget/Home_Widget.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: App_bar_Profile()),
        Positioned(
          height: 150,
          top: 0,
          child: Images_Body_App_Top(),
        ),
        const Padding(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 0), child: Card_Mastr()),
        const Padding(
            padding: EdgeInsets.fromLTRB(155, 0, 0, 0), child: App_bar_Text()),
        const Padding(
            padding: EdgeInsets.fromLTRB(155, 27, 0, 0),
            child: App_bar_Text_body()),
        const Padding(
            padding: EdgeInsets.fromLTRB(10, 320.2, 10, 0),
            child: Home_price()),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 450, 10, 0),
            child: Button_Masgess_title()),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 550, 10, 0),
            child: Text_show_hid()),
        Padding(
          padding: const EdgeInsets.fromLTRB(185, 370, 0, 0),
          child: Text_title_Price(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(105, 370, 0, 0),
          child: Text_title_Price_body(),
        ),
      ],
    );
  }
}


