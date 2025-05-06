import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_my/pages/Home.dart';
import 'package:project_my/pages/Welcome.dart';
import 'package:project_my/pages/Loing.dart';
import 'package:project_my/pages/Signup.dart';
import 'package:sizer/sizer.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options:  const FirebaseOptions(
          apiKey: "AIzaSyBjS_QAqFZUqhTut4LY-ON2NX2uueF9_yE",
          appId: "1:208943152122:android:b9f07af1ea141afc618243",
          messagingSenderId: "208943152122",
          projectId: "card-app-b8405",
        ),
      );
      runApp(MyApp());
  }catch(e){
    if (e is PlatformException) {
      print('حدث خطأ في التواصل مع النظام الأساسي: ${e.message}');
      runApp(MyApp());
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/Welcome',
          routes: <String, WidgetBuilder>{
            '/Welcome': (BuildContext context) => const Welcome(),
            '/Loing': (BuildContext context) => const Loing(),
            '/Signup': (BuildContext context) => const Signup(),
            '/Home': (BuildContext context) => const Home(),
          },
        );
      },
    );
  }
}
