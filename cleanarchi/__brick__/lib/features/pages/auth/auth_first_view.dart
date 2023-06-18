import 'package:{{name.snakeCase()}}/core/ui/themes/typography.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_state.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthFirstView extends StatefulWidget {
  const AuthFirstView({super.key});

  @override
  State<AuthFirstView> createState() => _AuthFirstViewState();
}

class _AuthFirstViewState extends State<AuthFirstView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Auth First Screen View',
            style: AppTypography.smallRegular,
          ),
          TextButton(
            onPressed: () {
              Get.find<AuthViewController>()
                  .onPageChanged(AuthPageChanged.login);
            },
            child: const Text('Goto Login Page'),
          ),
        ],
      ),
    );
  }
}
