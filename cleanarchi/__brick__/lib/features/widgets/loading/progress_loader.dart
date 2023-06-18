import 'dart:developer';

import 'package:{{name.snakeCase()}}/features/widgets/loading/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showLoading(String message, {bool isDismissable = false}) {
  Get.dialog<bool>(
    Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        height: 64,
        width: 100,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(width: 40, height: 40, child: LoadingIndicator()),
            const SizedBox(
              width: 16,
            ),
            Text(message),
          ],
        ),
      ),
    ),
    barrierColor: Colors.black12,
    barrierDismissible: isDismissable,
  );
}

void dissmissLoading() {
  if (Get.isDialogOpen != null) {
    log('message :: dialog is open');
    Get.back<bool>();
  }
}
