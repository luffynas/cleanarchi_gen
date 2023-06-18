import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:flutter/material.dart';

Future<void> showModalBottomSheetDefault(
  BuildContext context, {
  VoidCallback? onClose,
  String? title,
  Widget? textBody,
  Widget? center,
  Widget? bottom,
  double height = 250,
}) async {
  return showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Colors.white,
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  height: 4,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.dividerBottomSheet,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Stack(
                children: [
                  Visibility(
                    visible: title != null,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Center(
                        child: Text(
                          title ?? '',
                          style: AppTypography.normalMedium.copyWith(
                            color: const Color(0xFF0F162C),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: IconButton(
                      onPressed: onClose,
                      icon: const Icon(
                        Icons.account_circle_outlined,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: textBody ?? SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: center ?? SizedBox(),
              ),
              Expanded(
                child: bottom ?? SizedBox(),
              )
            ],
          ),
        ),
      );
    },
  );
}
