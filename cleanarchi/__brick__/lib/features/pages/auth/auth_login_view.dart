import 'dart:developer';

import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_state.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_view_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthLoginView extends StatefulWidget {
  const AuthLoginView({super.key});

  @override
  State<AuthLoginView> createState() => _AuthLoginViewState();
}

class _AuthLoginViewState extends State<AuthLoginView> {
  final textUsername = TextEditingController();
  final textPassword = TextEditingController();

  void onLogin() {
    Get.find<MainController>().initMain();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text('Auth Login View'),
          TextField(
            controller: textUsername,
            decoration: const InputDecoration(
              hintText: 'Username',
            ),
            onChanged: (value) {
              setState(() {});
            },
          ),
          const SizedBox(height: 16),
          TextField(
            controller: textPassword,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            onChanged: (value) {
              setState(() {});
            },
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              log('message :::adfadf :::');
              onLogin.call();
            },
            child: const Text('Login Now'),
          ),
          TextButton(
            onPressed: () {
              Get.find<AuthViewController>()
                  .onPageChanged(AuthPageChanged.register);
            },
            child: const Text('Goto Register Page'),
          ),
        ],
      ),
    );
  }
}
