import 'dart:developer';

import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:{{name.snakeCase()}}/features/controllers/theme_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/translate_controller.dart';
import 'package:{{name.snakeCase()}}/features/widgets/bottom_sheet/bottom_sheet_default.dart';
import 'package:{{name.snakeCase()}}/features/widgets/button/app_button.dart';
import 'package:{{name.snakeCase()}}/features/widgets/loading/divider/divider_widget.dart';
import 'package:{{name.snakeCase()}}/translations/translation_message_key.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: AppTypography.appBarTitle,
          ),
        ),
        body: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tema Aplikasi',
                          style: AppTypography.normalMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Tombol on / off',
                          style: AppTypography.smallRegular.copyWith(
                            color: AppColors.mGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GetX<ThemeController>(
                    builder: (controller) {
                      return Switch(
                        value: controller.theme.value == ThemeMode.dark.name,
                        onChanged: (value) {
                          if (value) {
                            controller.onChangeTheme(ThemeMode.dark);
                          } else {
                            controller.onChangeTheme(ThemeMode.light);
                          }
                        },
                      );
                    },
                  )
                ],
              ),
            ),
            const DividerWidget(),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TranslationMessageKey.languageApp.tr,
                          style: AppTypography.normalMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Tombol on : Indonesia / off : English',
                          style: AppTypography.smallRegular.copyWith(
                            color: AppColors.mGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GetX<TranslateController>(
                    builder: (controller) {
                      log('message ::: ${controller.locale.value}');
                      return Switch(
                        value: controller.locale.value !=
                            Get.deviceLocale?.languageCode,
                        onChanged: (value) {
                          if (value) {
                            controller.onUpdateLocal(const Locale('id', 'ID'));
                          } else {
                            controller.onUpdateLocal(const Locale('en', 'US'));
                          }
                        },
                      );
                    },
                  )
                ],
              ),
            ),
            const DividerWidget(),
            GestureDetector(
              onTap: () {
                showModalBottomSheetDefault(
                  context,
                  height: 180,
                  textBody: StatefulBuilder(
                    builder: (context, setState) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Apakah anda yakin ingin keluar?',
                            style: AppTypography.mediumMedium,
                          ),
                          const SizedBox(height: 30),
                          AppButton(
                            title: 'Logout',
                            onPressed: () {
                              log('message ::: logout');
                            },
                          )
                        ],
                      );
                    },
                  ),
                  onClose: () {
                    Navigator.of(context).pop();
                  },
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Logout',
                      style: AppTypography.normalMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Logout dari aplikasi',
                      style: AppTypography.smallRegular.copyWith(
                        color: AppColors.mGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
