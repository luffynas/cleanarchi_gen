import 'package:{{name.snakeCase()}}/core/enum/main_state.dart';
import 'package:{{name.snakeCase()}}/features/controllers/main_controller.dart';
import 'package:{{name.snakeCase()}}/features/pages/auth/auth_page.dart';
import 'package:{{name.snakeCase()}}/features/pages/dashboard/dashboard_pages.dart';
import 'package:{{name.snakeCase()}}/features/pages/onboarding/onboarding_page.dart';
import 'package:{{name.snakeCase()}}/features/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class InitialAppPage extends StatelessWidget {
  const InitialAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<MainController>(
      builder: (controller) {
        switch (controller.mainState.value) {
          case MainState.onboarding:
            return const OnboardingPage();
          case MainState.authorized:
            return const DashboardPage();
          case MainState.unauthorized:
            return const AuthPage();
          case MainState.splash:
            return const SplashPage();
        }
      },
    );
  }
}
