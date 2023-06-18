import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:{{name.snakeCase()}}/features/pages/initial_app_pages.dart';
import 'package:{{name.snakeCase()}}/route/routes.dart';
import 'package:{{name.snakeCase()}}/translations/translation_messages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '{{name}}',
      unknownRoute: Routes.unknownRoute,
      initialRoute: '/',
      getPages: Routes.routerPages,
      routingCallback: (routing) {
        if (routing?.current == '/dashboard') {
          log('Open Message or ADS');
        }
      },
      theme: Get.isDarkMode ? themeDark() : themeLight(),
      translations: TranslationMessages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      home: const InitialAppPage(),
    );
  }
}
