import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/core/ui/styles/radius.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:{{name.snakeCase()}}/features/widgets/widget_toggle.dart';
import 'package:{{name.snakeCase()}}/features/widgets/widget_type.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    super.key,
    this.onPressed,
    this.minWidth = 24,
    this.color,
    this.colorBorder,
    required this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.toggle = WidgetToggle.active,
    this.backgroundColor,
    this.position,
    this.imageSrc,
    this.borderRadius,
  }) : super();

  final VoidCallback? onPressed;
  final double minWidth;
  final Color? color;
  final Color? colorBorder;
  final String title;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final WidgetToggle toggle;
  final Color? backgroundColor;
  final WidgetPosition? position;
  final String? imageSrc;
  final BorderRadiusGeometry? borderRadius;

  bool get isImage => imageSrc != null && imageSrc!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return OutlinedButtonTheme(
      data: OutlinedButtonThemeData(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all<Size>(Size(minWidth, 32)),
          foregroundColor: MaterialStateProperty.all<Color>(
            (backgroundColor == null || backgroundColor == AppColors.white)
                ? AppColors.gray[700]!
                : AppColors.white,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.gray.shade200;
            }
            return backgroundColor ?? AppColors.white[500]!;
          }),
          // overlayColor: MaterialStateProperty.all<Color>(Colors.red),
          // surfaceTintColor: MaterialStateProperty.all<Color>(Colors.red),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return AppTypography.smallMedium
                    .copyWith(color: AppColors.gray[200]);
              }
              return AppTypography.smallMedium;
            },
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(color: colorBorder ?? AppColors.gray[200]!),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: borderRadius ?? AppRadius.md),
          ),
        ),
      ),
      child: OutlinedButton(
        onPressed: toggle == WidgetToggle.active ? onPressed : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              child: Container(
                padding: const EdgeInsets.only(right: 8),
                child: prefixIcon,
              ),
            ),
            Visibility(
              visible: isImage && position == WidgetPosition.left,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  imageSrc ?? '',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            Text(
              title,
              // style: AppTypography.smallMedium,
            ),
            Visibility(
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                child: suffixIcon,
              ),
            ),
            Visibility(
              visible: isImage && position == WidgetPosition.right,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  imageSrc ?? '',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
