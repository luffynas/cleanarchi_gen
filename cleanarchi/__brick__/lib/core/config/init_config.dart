import 'package:{{name.snakeCase()}}/core/services/storage_repository.dart';
import 'package:{{name.snakeCase()}}/data/dao/user_database.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///init config for core
Future<void> initConfig() async {
  final storage = GetIt.I<StorageRepository>();
  final config = storage.getConfigStorage();

  await UserDao().init();

  ///initialize config app
  await config.setThemeMode(value: ThemeMode.system);
}
