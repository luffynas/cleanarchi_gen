import 'package:{{name.snakeCase()}}/features/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Onboarding page '),
              TextButton(
                onPressed: () {
                  Get.find<MainController>().exitOnboarding();
                },
                child: const Text('To Login Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
