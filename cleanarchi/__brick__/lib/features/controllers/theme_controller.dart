import 'package:{{name.snakeCase()}}/core/storage/config_storage.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final configApp = ConfigStorage();
  Rx<String> theme = Rx(ThemeMode.system.name);

  @override
  Future<void> onInit() async {
    super.onInit();
    theme.value = await configApp.getThemeMode() ?? ThemeMode.system.name;
  }

  void onChangeTheme(ThemeMode themeMode) {
    theme.value = themeMode.name;
    configApp.setThemeMode(value: themeMode);
    switch (themeMode) {
      case ThemeMode.light:
        Get.changeTheme(themeLight());
        break;
      case ThemeMode.dark:
        Get.changeTheme(themeDark());
        break;
      case ThemeMode.system:
        Get.changeTheme(themeLight());
        break;
    }
  }
}
