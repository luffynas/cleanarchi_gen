import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_state.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthRegisterView extends StatefulWidget {
  const AuthRegisterView({super.key});

  @override
  State<AuthRegisterView> createState() => _AuthRegisterViewState();
}

class _AuthRegisterViewState extends State<AuthRegisterView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Auth Regsiter View'),
        TextButton(
          onPressed: () {
            Get.find<AuthViewController>().onPageChanged(AuthPageChanged.login);
          },
          child: const Text('Goto Login Page'),
        ),
      ],
    );
  }
}
