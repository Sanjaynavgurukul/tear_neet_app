import 'package:shared_preferences/shared_preferences.dart';

class SharePreference {
  // set and get local login cred :D
  Future<void> setTimer({required String value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('local_timer', value);
  }

  Future<String?> getTimer() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('local_timer');
  }
}

final pref = SharePreference();
