import 'dart:developer';

import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_state.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_view_controller.dart';
import 'package:{{name.snakeCase()}}/features/pages/auth/auth_first_view.dart';
import 'package:{{name.snakeCase()}}/features/pages/auth/auth_login_view.dart';
import 'package:{{name.snakeCase()}}/features/pages/auth/auth_register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthViewController> {
  const AuthPage({super.key});

  Future<bool> onWillPop() async {
    log('message ::: ${Get.find<AuthViewController>().authPageChanged.value}');
    if (Get.find<AuthViewController>().authPageChanged.value !=
        AuthPageChanged.initial) {
      await Get.find<AuthViewController>().onPageChanged(
        AuthPageChanged.initial,
      );
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: SafeArea(
        child: Scaffold(
          body: GetX<AuthViewController>(
            builder: (controller) {
              switch (controller.authPageChanged.value) {
                case AuthPageChanged.login:
                  return const AuthLoginView();
                case AuthPageChanged.register:
                  return const AuthRegisterView();
                case AuthPageChanged.verifyOtp:
                  return const AuthRegisterView();
                case AuthPageChanged.initial:
                  return const AuthFirstView();
              }
            },
          ),
        ),
      ),
    );
  }
}
