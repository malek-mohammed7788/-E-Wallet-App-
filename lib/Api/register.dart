import "dart:convert";
import 'package:http/http.dart' as http;

import '../constants.dart';

class RegisterController {
  int checkResgistor = 0;
  Future<int> login(String username, String fullname, String password,
      String email, String phone) async {
    var url = Uri.http(Iplocalhost, linkregistor, {'q': '{http}'});
    var response = await http.post(url, body: {
      "fullname": fullname,
      "useremail": username,
      "phoneNumber": password,
      "password": email,
    });
    var data = json.decode(response.body);
    if (response.statusCode == 200) {
      if (data.toString() == "Error Exit") {
        checkResgistor = 1;
      } else if (data.toString() == "Success User") {
        checkResgistor = 2;
      }
    } else {
      print("Not Connected");
    }
    return checkResgistor;
  }
}
