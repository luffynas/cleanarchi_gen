import 'package:{{name.snakeCase()}}/core/storage/auth_storage.dart';
import 'package:{{name.snakeCase()}}/core/storage/config_storage.dart';

abstract class StorageRepository {
  Future<void> init();
  AuthStorage getAuthStorage();
  ConfigStorage getConfigStorage();
}
