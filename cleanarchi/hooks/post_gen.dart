import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');
  final name = context.vars['name'];

  // Run `flutter packages get` after generation.
  await Process.run('flutter', ['clean']);
  await Process.run('flutter', ['pub', 'get']);
  await Process.run('flutter', [
    'packages',
    'pub',
    'build_runner',
    'build',
    '--delete-conflicting-outputs'
  ]);
  await Process.run('rm', ['.git']);
  await Process.run('cd', ['ios']);
  await Process.run('pod', ['install', '--repo-update']);
  await Process.run('pod', ['install', '--repo-update']);

  context.logger.info('How to run this project');
  context.logger.success('cd $name/');
  context.logger.info('runing flavor DEV');
  context.logger
      .success('flutter run --flavor dev --target lib/main_dev.dart --verbose');
  context.logger.info('runing flavor UAT');
  context.logger
      .success('flutter run --flavor uat --target lib/main_uat.dart --verbose');
  context.logger.info('runing flavor PROD');
  context.logger.success(
      'flutter run --flavor prod --target lib/main_prod.dart --verbose');
  progress.complete();
}
