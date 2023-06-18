import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

SpUtils spUtils = SpUtils();

class SpUtils {
  /// Returns a singleton
  factory SpUtils() {
    return _inst;
  }

  SpUtils._internal() {
    _init();
  }

  static final SpUtils _inst = SpUtils._internal();

  ///
  SharedPreferences? prefs;

  Future<void> _init() async {
    prefs = await SharedPreferences.getInstance();
  }

  ///put bool into shared Pref
  Future<void> putBool({required String key, required bool value}) async {
    await prefs!.setBool(key, value);
  }

  ///find bool into shared Pref
  bool? getBool({required String key}) {
    return prefs!.getBool(key);
  }

  ///put String into shared Pref
  Future<void> putString({required String key, required String value}) async {
    await prefs!.setString(key, value);
  }

  ///find String into shared Pref
  String? getString(String key) {
    return prefs!.getString(key);
  }

  ///put Int into shared Pref
  Future<void> putInt(String key, int value) async {
    await prefs!.setInt(key, value);
  }

  ///find Int into shared Pref
  int? getInt(String key) {
    return prefs!.getInt(key);
  }

  ///remove Key from shared Pref
  void removeKey(String key) {
    prefs!.remove(key);
  }

  ///clean share Pres and return True if success otherwise
  Future<bool> clear() async {
    return prefs!.clear();
  }
}
