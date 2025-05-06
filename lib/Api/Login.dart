import "dart:convert";
import 'package:http/http.dart' as http;

import '../constants.dart';

class LoginController {
  bool checkLogin = false;

  Future<bool> login(String phoneNumber, String password) async {

    var url = Uri.http(Iplocalhost, linkregistor, {'q': '{http}'});

    var response = await http.post(url, body: {
      "phoneNumber": phoneNumber,
      "password": password,
    });
    var data = json.decode(response.body);
    data.toString() == "Success User" ? checkLogin = true : false;
    return checkLogin;
  }
}
