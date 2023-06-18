import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:flutter/material.dart';

class DividerDashWidget extends StatelessWidget {
  const DividerDashWidget({
    super.key,
    this.height = 1,
    this.color = AppColors.divider,
    this.dash = 3.0,
  });

  final double height;
  final Color color;
  final double dash;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dash)).floor();
        return Flex(
          // ignore: sort_child_properties_last
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dash,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
