import 'package:{{name.snakeCase()}}/core/services/storage_repository.dart';
import 'package:{{name.snakeCase()}}/core/storage/auth_storage.dart';
import 'package:{{name.snakeCase()}}/core/storage/config_storage.dart';
import 'package:get_storage/get_storage.dart';

class StorageRepositoryImpl extends StorageRepository {
  StorageRepositoryImpl() {
    init();
  }

  @override
  Future<void> init() async {
    await GetStorage.init();
  }

  @override
  AuthStorage getAuthStorage() {
    return AuthStorage();
  }

  @override
  ConfigStorage getConfigStorage() {
    return ConfigStorage();
  }
}
