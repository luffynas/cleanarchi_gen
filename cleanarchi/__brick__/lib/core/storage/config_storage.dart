import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ConfigStorage {
  final configApp = 'config_app';

  ///
  Future<void> isFirstApp({required bool value}) async {
    await GetStorage(configApp).write('is_first_app', value);
  }

  ///
  Future<bool> getFirstApp() async {
    return GetStorage(configApp).read<bool>('is_first_app') ?? true;
  }

  ///
  FutureOr<void> setThemeMode({required ThemeMode value}) async {
    await GetStorage(configApp).write('theme_mode', value.name);
  }

  ///
  Future<String?> getThemeMode() async {
    return GetStorage(configApp).read<String>('theme_mode');
  }

  ///
  FutureOr<void> setlanguageCode({required Locale value}) async {
    await GetStorage(configApp).write('language_code', value.languageCode);
  }

  ///
  Future<String?> getLanguageCode() async {
    return GetStorage(configApp).read<String>('language_code');
  }

  ///
  Future<void> clear() async {
    await GetStorage(configApp).erase();
  }
}
