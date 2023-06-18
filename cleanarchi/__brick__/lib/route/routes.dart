import 'package:get/get.dart';
import 'package:{{name.snakeCase()}}/features/pages/auth/auth_page.dart';
import 'package:{{name.snakeCase()}}/features/pages/dashboard/dashboard_pages.dart';
import 'package:{{name.snakeCase()}}/features/pages/error/unknown_page.dart';
import 'package:{{name.snakeCase()}}/features/pages/initial_app_pages.dart';
import 'package:{{name.snakeCase()}}/features/pages/onboarding/onboarding_page.dart';
import 'package:{{name.snakeCase()}}/features/pages/settings/setting_page.dart';

// ignore_for_file: strict_raw_type
class Routes {
  static GetPage unknownRoute = GetPage(
    name: '/notfound',
    page: () => const UnknownPage(),
  );

  static List<GetPage> routerPages = [
    GetPage(name: '/', page: () => const InitialAppPage()),
    GetPage(name: '/onboarding', page: () => const OnboardingPage()),
    GetPage(name: '/auth', page: () => const AuthPage()),
    GetPage(name: '/dashboard', page: () => const DashboardPage()),
    GetPage(name: '/settings', page: () => const SettingPage()),
  ];
}
