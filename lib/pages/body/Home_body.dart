import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Home.dart';
import '../widget/Home_Widget.dart';
import 'Page/PriceScreen.dart';
import 'Page/SettingsScreen.dart';


class Home_body extends StatefulWidget {
  const Home_body({Key? key}) : super(key: key);

  @override
  _Home_bodyState createState() => _Home_bodyState();
}

class _Home_bodyState extends State<Home_body> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    Home(), // Remove const here
    SingleChildScrollView(
      child: Price(), // Remove const here
    ),
    SingleChildScrollView(
      child: Settings(), // Remove const here
    )
  ];
/*
  late List<CameraDescription> cameras;
  Future<void> setupCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraPreview(cameras[0] as CameraController),
      ),
    );
  }
*/
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabItems[_selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        showElevation: false,
        // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
              icon: const Icon(Icons.home_outlined),
              title: const Text('الرئيسية'),
              activeColor: Colors.deepPurple),
          FlashyTabBarItem(
              icon: const Icon(Icons.edit_attributes_outlined),
              title: const Text('فوري'),
              activeColor: Colors.deepPurple),
          FlashyTabBarItem(
              icon: const Icon(Icons.settings),
              title: const Text('الاعدادات'),
              activeColor: Colors.deepPurple),
        ],
      ),
    );
  }
}


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