import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheHelper {
  static SharedPreferences? pref;
  static Future<void> initCache() async {
    pref = await SharedPreferences.getInstance();
  }

  static Future<bool?> setString({
    required String key,
    required String value,
  }) async {
    var res = await pref?.setString(key, value);
    return res;
  }

  static String? getString({required String key}) {
    String? value = pref?.getString(key);
    return value;
  }

  static clearCachedValue({required String key}) async {
    await pref?.remove(key);
  }
}
