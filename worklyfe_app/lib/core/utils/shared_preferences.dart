import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static Future<void> saveLoginData(String? email, String? displayName, String? uid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email!);
    prefs.setString('name', displayName!);
    prefs.setString('uid', uid!);
  }

  static Future<String> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('email') ?? '';
  }

  static Future<String> getUid() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('uid') ?? '';
  }

  static Future<String> getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name') ?? '';
  }

  static Future<void> clearSessionData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
