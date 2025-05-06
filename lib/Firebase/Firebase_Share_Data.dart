import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static const String _emailKey = "email";

  Future<SharedPreferences> get _prefs async => await SharedPreferences.getInstance();

  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      final SharedPreferences prefs = await _prefs;
      prefs.setString(_emailKey, email);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();

      final SharedPreferences prefs = await _prefs;
      prefs.remove(_emailKey);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<String?> getEmail() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_emailKey);
  }
}
