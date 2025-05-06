import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';
import 'package:project_my/constants.dart';


Widget Button_Profile() => Container(
      child: GFButton(
        onPressed: () {},
        text: 'تعديل الملف الشخصي',
        color: Colors.pink,
        textStyle: GoogleFonts.readexPro(color: Colors.white),
        icon: const Icon(Icons.perm_contact_cal),
        type: GFButtonType.solid,
        fullWidthButton: true,
      ),
    );

Widget Button_Call_help() => Container(
      child: GFButton(
        onPressed: () {},
        text: 'مساعدة ودعم الفني',
        textStyle: GoogleFonts.readexPro(color: Colors.white),
        icon: const Icon(Icons.help),
        type: GFButtonType.solid,
        fullWidthButton: true,
      ),
    );

Widget Button_Massges() => Container(
      child: GFButton(
        onPressed: () {},
        text: 'محادثة فورية',
        color: Colors.purple,
        textStyle: GoogleFonts.readexPro(color: Colors.white),
        icon: const Icon(Icons.multitrack_audio_sharp),
        type: GFButtonType.solid,
        fullWidthButton: true,
      ),
    );

Widget Button_Masgess_title() => Container(
      height: 100,
      child: const GFListTile(
          titleText: 'نصيحة اليوم',
          subTitleText: 'إحتفظ بقرشك الأبيض ليومك الأسواد',
          color: Colors.white,
          icon: Icon(Icons.favorite)),
    );

Widget Json_Add_Signup() => Container(
      child: Lottie.asset('assets/json/add.json'),
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

Widget Images_Card_mastrcrad() => Container(
      child: Image.asset('assets/images/mastercard.png'),
    );

Widget Images_Profile_User() => Container(
      height: 60.3,
      child: const GFAvatar(
          backgroundImage: AssetImage('assets/images/Profile.png')),
    );

Widget Images_Back_Card() => Container(
      height: 37.2,
      child: Image.asset('assets/images/card-back.jpg'),
    );

Widget Setings_log_App() => Container(
      height: 45.5,
      child: Image.asset('assets/images/log-crad.png'),
    );

Widget Images_Setting_Top() => Container(
      height: 100,
      width: 100,
      child: Image.asset(
        'assets/icons/setting.png',
      ),
    );

Widget Text_title_seting() => Text(
      'الملف الشخصي والدردشة الفورية',
      textDirection: TextDirection.rtl,
      style: GoogleFonts.readexPro(fontSize: 25, color: Colors.deepPurple),
    );

Widget Text_title_price() => Text(
      'عروض فورية وشحن الرصيد',
      textDirection: TextDirection.rtl,
      style: GoogleFonts.readexPro(fontSize: 25, color: Colors.deepPurple),
    );

Widget Text_title() => Text(
      ':) مرحبا بك',
      style: GoogleFonts.readexPro(fontSize: 20, color: Colors.deepPurple),
    );

Widget Text_title_body() => Text(
      'مرحبا بك م.مالك محمد ',
      style: GoogleFonts.readexPro(fontSize: 15, color: Colors.deepPurple),
    );

Widget Text_title_Price() => Text(
      'رصيدك الحالي',
      style: GoogleFonts.readexPro(fontSize: 23, color: Colors.white),
    );

Widget Text_title_Price_body() => Text(
      '1000',
      style: GoogleFonts.readexPro(
          fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
    );

Widget Text_title_Price_title() => Text(
      'العروض الحالية',
      style: GoogleFonts.readexPro(fontSize: 23, color: Colors.deepPurple),
    );

Widget Text_title_Price_button() => Text(
      'عروض المميزة',
      style: GoogleFonts.readexPro(fontSize: 23, color: Colors.deepPurple),
    );

Widget Text_title_Price_center() => Text(
      'دعم الفوري لتعئبة الرصيد',
      textDirection: TextDirection.rtl,
      style: GoogleFonts.readexPro(fontSize: 23, color: Colors.deepPurple),
    );

Widget Text_info_Dev() => Text(
      'تم تطويره بواسطة',
      style: GoogleFonts.readexPro(fontSize: 14, color: Colors.deepPurple),
    );

Widget Text_dev_my() => Text(
      'فريق التطوير التطبيق',
      style: GoogleFonts.readexPro(fontSize: 12, color: Colors.black54)
    );

Widget Text_dev_my_number_mobiel() => Text(
      'MMA - Development',
      style: GoogleFonts.readexPro(fontSize: 12, color: Colors.black54),
    );

Widget Text_info_app_ver() => Text(
      'v1.0.0',
      style: GoogleFonts.readexPro(fontSize: 13, color: Colors.deepPurple),
    );

Widget Text_show_hid() => const GFAccordion(
    title: 'سجل العمليات',
    contentBackgroundColor: Colors.white12,
    content: '  عملية شراء ناجحة في تاريخ 4/30 بقيمة 10 دولار ',
    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    collapsedIcon: Icon(Icons.add),
    expandedIcon: Icon(Icons.minimize));

class App_bar_Text extends StatelessWidget {
  const App_bar_Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(90, 45.5, 0, 0),
            child: Text_title(),
          ),
        ],
      ),
    );
  }
}

class App_bar_Text_body extends StatelessWidget {
  const App_bar_Text_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 45.5, 0, 0),
            child: Text_title_body(),
          ),
        ],
      ),
    );
  }
}

class App_bar_Profile extends StatelessWidget {
  const App_bar_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(350, 10, 0, 0),
            child: Images_Profile_User(),
          ),
        ],
      ),
    );
  }
}

class Card_Mastr extends StatefulWidget {
  const Card_Mastr({Key? key}) : super(key: key);

  @override
  _Card_MastrState createState() => _Card_MastrState();
}

class _Card_MastrState extends State<Card_Mastr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      height: 220,
      width: 420,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: <Widget>[
            Positioned(height: 400, child: Images_Back_Card()),
            Positioned(
                bottom: 10,
                right: 10,
                height: 85.4,
                child: Images_Card_mastrcrad()),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 55, 0, 0),
                  child: Text(
                    '5444 83 50000 25520',
                    style: GoogleFonts.sourceCodePro(
                        fontSize: 30, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 165, 0),
                  child: Text(
                    'EXP.09/23-903',
                    style: GoogleFonts.ibmPlexMono(
                        fontSize: 18, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 11, 120, 0),
                  child: Text(
                    'Name User Card - F',
                    style: GoogleFonts.readexPro(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class App_Images_title extends StatelessWidget {

  final List<String> imageList = [
    "assets/images/Card_One.jpg",
    "assets/images/Card_Two.jpg",
    "assets/images/Card_Thre.jpg",
    "assets/images/Card_Four.jpg",
    "assets/images/Card_Five.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GFItemsCarousel(
        rowCount: 4,
        children: imageList.map(
          (url) {
            return Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Image.asset(url, fit: BoxFit.cover, width: 1000.0),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

class App_Images_center extends StatelessWidget {
  final List<String> imageList = [
    "assets/images/Card_One.jpg",
    "assets/images/Card_Two.jpg",
    "assets/images/Card_Thre.jpg",
    "assets/images/Card_Four.jpg",
    "assets/images/Card_Five.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GFItemsCarousel(
        rowCount: 4,
        children: imageList.map(
          (url) {
            return Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                  width: 1000.0,
                  height: 1000.0,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

class Call_My extends StatelessWidget {
  final GFBottomSheetController _controller = GFBottomSheetController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GFBottomSheet(
        controller: _controller,
        maxContentHeight: 150,
        stickyHeaderHeight: 100,
        stickyHeader: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 0)]),
          child: const GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets image here'),
            ),
            titleText: 'GetWidget',
            subTitleText: 'Open source UI library',
          ),
        ),
        contentBody: Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: ListView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            children: const [
              Center(
                  child: Text(
                      'Getwidget reduces your overall app development time to minimum 30% because of its pre-build clean UI widget that you can use in flutter app development. We have spent more than 1000+ hours to build this library to make flutter developer’s life easy.',
                style: TextStyle(
                    fontSize: 15, wordSpacing: 0.3, letterSpacing: 0.2),
              ))
            ],
          ),
        ),
        stickyFooter: Container(
          color: GFColors.SUCCESS,
          child:const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  <Widget>[
              Text(
                'Get in touch',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'info@getwidget.dev',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
        stickyFooterHeight: 50,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: GFColors.SUCCESS,
          child: _controller.isBottomSheetOpened
              ? const Icon(Icons.keyboard_arrow_down)
              : const Icon(Icons.keyboard_arrow_up),
          onPressed: () {
            _controller.isBottomSheetOpened
                ? _controller.hideBottomSheet()
                : _controller.showBottomSheet();
          }),
    );
  }
}

class Home_price extends StatelessWidget {
  const Home_price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: GFBorder(
        dashedLine: [4, 6],
        type: GFBorderType.rect,
        color: kPrimaryColor,
        child: Image.asset(
          'assets/images/card-back.jpg',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class Social_button extends StatelessWidget {
  const Social_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: GFIconButton(
                onPressed: () async {
                  const url =
                      'https://www.facebook.com/profile.php?id=100005091559089';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                color: Colors.indigoAccent,
                icon: const Icon(Icons.facebook),
                size: GFSize.MEDIUM,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: GFIconButton(
                onPressed: () async {
                  const url = 'https://wtspee.com/967778888730';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                color: Colors.green,
                icon: const Icon(Icons.access_time_filled_sharp),
                size: GFSize.MEDIUM,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: GFIconButton(
                onPressed: () async {
                  const url = 'https://www.life-wab.com/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                color: Colors.redAccent,
                icon: const Icon(Icons.web),
                size: GFSize.MEDIUM,
              ),
            )
          ],
        )
      ],
    );
  }
}

show_setting_open_tools_others(BuildContext context) async {
  await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          // <-- SEE HERE
          topLeft: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return const SizedBox(
          height: 550,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children:  <Widget>[],
          ),
        );
      });
}

show_inforamtion(BuildContext context) async {
  await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          // <-- SEE HERE
          topLeft: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return const SizedBox(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children:  <Widget>[],
          ),
        );
      });
}

show_k(BuildContext context) async {
  await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          // <-- SEE HERE
          topLeft: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return SizedBox(
          height: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(135, 10, 10, 0),
                child: Text(
                  'قم بتصوير سند الإيداع ونقر على الإرسال للمصادقة عليه',
                  textDirection: TextDirection.rtl,
                  style:
                      GoogleFonts.readexPro(fontSize: 20, color: Colors.purple),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),
                child: GFButton(
                  onPressed: () {
                  },
                  color: Colors.purple,
                  text: 'إرسال',
                  textStyle: GoogleFonts.readexPro(color: Colors.white),
                  icon: const Icon(Icons.camera),
                  shape: GFButtonShape.pills,
                  fullWidthButton: true,
                ),
              )
            ],
          ),
        );
      });
}

show_n(BuildContext context) async {
  await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          // <-- SEE HERE
          topLeft: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return SizedBox(
            height: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(135, 10, 10, 0),
                  child: Text(
                    'قم بتصوير سند الإرسال ونقر على الإرسال للمصادقة عليه',
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.readexPro(
                        fontSize: 20, color: Colors.purple),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),
                  child: GFButton(
                    onPressed: () {},
                    color: Colors.purple,
                    text: 'إرسال',
                    textStyle: GoogleFonts.readexPro(color: Colors.white),
                    icon: const Icon(Icons.camera),
                    shape: GFButtonShape.pills,
                    fullWidthButton: true,
                  ),
                )
              ],
            ));
      });
}
