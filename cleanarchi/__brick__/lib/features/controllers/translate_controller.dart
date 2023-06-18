import 'package:{{name.snakeCase()}}/core/storage/config_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateController extends GetxController {
  final configApp = ConfigStorage();
  Rx<String> locale = Rx(Get.deviceLocale!.languageCode);

  @override
  Future<void> onInit() async {
    super.onInit();
    locale.value = await configApp.getLanguageCode() ?? '';
  }

  void onUpdateLocal(Locale loc) {
    locale.value = loc.languageCode;
    configApp.setlanguageCode(value: loc);
    Get.updateLocale(loc);
  }
}
