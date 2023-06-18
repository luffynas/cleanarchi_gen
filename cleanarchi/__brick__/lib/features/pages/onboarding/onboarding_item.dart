// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';

class OnboardingItem extends StatefulWidget {
  const OnboardingItem({
    super.key,
    this.title,
    this.content,
    this.imageContent,
    this.imageIcon,
    this.imageColor = Colors.redAccent,
    this.position = 0,
  });

  final String? title;
  final String? content;
  final String? imageContent;
  final Widget? imageIcon;
  final Color? imageColor;
  final int position;

  @override
  State<OnboardingItem> createState() {
    return _WalkthroughItemState();
  }
}

class _WalkthroughItemState extends State<OnboardingItem>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation = Tween(begin: -250, end: 0.0).animate(
      new CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    animation.addListener(() => setState(() {}));

    animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildContext1();
  }

  Widget _buildContext1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          flex: 2,
          child: SizedBox(height: 72),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              widget.title ?? '',
              style: AppTypography.mediumBold.copyWith(
                fontSize: 18,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              textScaleFactor: 1,
            ),
          ),
        ),
        const SizedBox(height: 40),
        Expanded(
          flex: 6,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Align(
              child: Image.asset(
                widget.imageContent ?? '',
                width: 328,
                height: 328,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.content ?? '',
              style: AppTypography.smallRegular.copyWith(
                letterSpacing: 0.25,
                color: Colors.white,
              ),
              textScaleFactor: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
