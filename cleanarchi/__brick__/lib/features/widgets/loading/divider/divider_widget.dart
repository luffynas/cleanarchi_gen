import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:flutter/material.dart';

enum DividerWidgetAxis { horizontal, vertical }

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
    this.height = 1,
    this.width = 1,
    this.color,
    this.axis = DividerWidgetAxis.horizontal,
  });

  final double height;
  final double width;
  final Color? color;
  final DividerWidgetAxis axis;

  @override
  Widget build(BuildContext context) {
    return axis == DividerWidgetAxis.vertical
        ? Container(
            height: height,
            width: width,
            color: color ?? AppColors.gray[200],
          )
        : Container(
            height: height,
            color: color ?? AppColors.gray[200],
          );
  }
}
