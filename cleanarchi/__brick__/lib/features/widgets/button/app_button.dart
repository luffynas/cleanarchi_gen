import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/features/widgets/button/extra_small_button.dart';
import 'package:{{name.snakeCase()}}/features/widgets/button/large_button.dart';
import 'package:{{name.snakeCase()}}/features/widgets/button/medium_button.dart';
import 'package:{{name.snakeCase()}}/features/widgets/button/small_button.dart';
import 'package:{{name.snakeCase()}}/features/widgets/widget_toggle.dart';
import 'package:{{name.snakeCase()}}/features/widgets/widget_type.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.widgetType = WidgetType.md,
    this.onPressed,
    this.minWidth,
    this.color,
    this.colorBorder,
    this.backgroundColor,
    required this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.position,
    this.imageSrc,
    this.borderRadius,
    this.toggle = WidgetToggle.active,
  });

  final WidgetType widgetType;
  final VoidCallback? onPressed;
  final double? minWidth;
  final Color? color;
  final Color? colorBorder;
  final Color? backgroundColor;
  final String title;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final WidgetToggle toggle;
  final WidgetPosition? position;
  final String? imageSrc;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    switch (widgetType) {
      case WidgetType.xs:
        return ExtraSmallButton(
          key: key,
          title: title,
          color: color,
          colorBorder: colorBorder,
          backgroundColor: backgroundColor,
          minWidth: minWidth ?? 16,
          onPressed: onPressed,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          toggle: toggle,
          position: position,
          imageSrc: imageSrc,
          borderRadius: borderRadius,
        );
      case WidgetType.sm:
        return SmallButton(
          key: key,
          title: title,
          color: color,
          colorBorder: colorBorder,
          backgroundColor: backgroundColor,
          minWidth: minWidth ?? 22,
          onPressed: onPressed,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          toggle: toggle,
          position: position,
          imageSrc: imageSrc,
          borderRadius: borderRadius,
        );
      case WidgetType.md:
        return MediumButton(
          key: key,
          title: title,
          color: color,
          colorBorder: colorBorder,
          backgroundColor: backgroundColor,
          minWidth: minWidth ?? 24,
          onPressed: onPressed,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          toggle: toggle,
          position: position,
          imageSrc: imageSrc,
          borderRadius: borderRadius,
        );
      case WidgetType.lg:
        return LargeButton(
          key: key,
          title: title,
          color: color,
          colorBorder: colorBorder,
          backgroundColor: backgroundColor,
          minWidth: minWidth ?? 32,
          onPressed: onPressed,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          toggle: toggle,
          position: position,
          imageSrc: imageSrc,
          borderRadius: borderRadius,
        );
    }
  }
}
