import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:{{name.snakeCase()}}/app.dart';
import 'package:{{name.snakeCase()}}/core/config/init_config.dart';
import 'package:{{name.snakeCase()}}/di/startapp.dart';
import 'package:{{name.snakeCase()}}/features/controllers/main_controller.dart';

FutureOr<void> main() async {
  await dotenv.load();

  StartApp.init();
  await initConfig();

  final controller = Get.find<MainController>();
  await controller.initMain();
  runApp(const App());
}
