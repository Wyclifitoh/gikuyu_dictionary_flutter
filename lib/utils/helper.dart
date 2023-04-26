import 'package:shared_preferences/shared_preferences.dart';

class Helper {
// Write DATA
  static Future<bool> saveUserData(valueSharedPreferences, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (valueSharedPreferences != null) {
      return await sharedPreferences.setString(valueSharedPreferences, value);
    } else {
      return await sharedPreferences.setString(valueSharedPreferences, "s");
    }
  }

  static Future<bool> saveUserDataInt(valueSharedPreferences, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (valueSharedPreferences != null) {
      return await sharedPreferences.setInt(valueSharedPreferences, value);
    } else {
      return await sharedPreferences.setInt(valueSharedPreferences, 0);
    }
  }

// Read Data
  static Future getUserData(valueSharedPreferences) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(valueSharedPreferences);
  }
}
