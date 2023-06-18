import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:{{name.snakeCase()}}/core/ui/styles/style.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/typography.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_state.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_view_controller.dart';
import 'package:{{name.snakeCase()}}/features/widgets/button/app_button.dart';
import 'package:{{name.snakeCase()}}/features/widgets/webview/internal_web_view.dart';
import 'package:{{name.snakeCase()}}/features/widgets/widget_type.dart';

class AuthFirstView extends StatefulWidget {
  const AuthFirstView({super.key});

  @override
  State<AuthFirstView> createState() => _AuthFirstViewState();
}

class _AuthFirstViewState extends State<AuthFirstView> {
  late TapGestureRecognizer _tapHelpRecognizer;

  @override
  void initState() {
    _tapHelpRecognizer = TapGestureRecognizer()..onTap = _handleSkipPressed;
    super.initState();
  }

  @override
  void dispose() {
    _tapHelpRecognizer.dispose();
    super.dispose();
  }

  void _handleSkipPressed() {
    HapticFeedback.vibrate();
    Navigator.of(context).push(
      // ignore: inference_failure_on_instance_creation
      MaterialPageRoute(
        builder: (context) => const InternalWebView(url: 'https://google.com'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: AppButton(
                  title: 'Goto Login Page',
                  onPressed: () {
                    Get.find<AuthViewController>()
                        .onPageChanged(AuthPageChanged.login);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 32,
                      ),
                      child: Text(
                        'Masuk atau daftar menggunakan',
                        style: AppTypography.smallRegular.copyWith(
                          letterSpacing: 0.25,
                          color: AppColors.gray,
                        ),
                        textScaleFactor: 1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: AppButton(
                            title: 'Google',
                            widgetType: WidgetType.lg,
                            imageSrc: 'assets/images/menu/ic_google.png',
                            position: WidgetPosition.left,
                            borderRadius: AppRadius.full,
                            onPressed: () async {},
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: AppButton(
                            title: 'Facebook',
                            widgetType: WidgetType.lg,
                            borderRadius: AppRadius.full,
                            imageSrc: 'assets/images/menu/ic_facebook.png',
                            position: WidgetPosition.left,
                            onPressed: () async {},
                          ),
                        ),
                      ],
                    ),
                    // Visibility(
                    //   visible: !isSkip,
                    //   child: Container(
                    //     padding: const EdgeInsets.only(top: 32),
                    //     alignment: Alignment.bottomCenter,
                    //     child: RichText(
                    //       text: TextSpan(
                    //         text: 'Lewati dan masuk nanti',
                    //         style: AppTypography.appBarTitle,
                    //         recognizer: _tapHelpRecognizer,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: TextSpan(
                text: 'Dengan mendaftar, kamu menyetujui ',
                style: AppTypography.extraSmallRegular,
                recognizer: _tapHelpRecognizer,
                children: [
                  TextSpan(
                    text: 'Kebijakan Privasi',
                    style: AppTypography.extraSmallRegular.copyWith(
                      color: AppColors.mBlue,
                    ),
                    recognizer: _tapHelpRecognizer,
                  ),
                  TextSpan(
                    text: ' ini.',
                    style: AppTypography.extraSmallRegular,
                    recognizer: _tapHelpRecognizer,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
