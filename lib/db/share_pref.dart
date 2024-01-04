import 'package:shared_preferences/shared_preferences.dart';

class SharePreference {
  // set and get local login cred :D
  Future<void> setTimer({required int value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('examTimer', value);
  }

  Future<int?> getTimer() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('examTimer');
  }

  Future<void> setWelcomeDisplayed({required bool value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('welcome_displayed', value);
  }

  Future<bool?> getWelcomeDisplayed() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('welcome_displayed');
  }
}

final pref = SharePreference();
