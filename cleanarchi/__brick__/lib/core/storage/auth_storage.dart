import 'dart:async';

import 'package:get_storage/get_storage.dart';

///@TODO(luffynas): add documentation.
class AuthStorage {
  ///@TODO(luffynas): add documentation.
  final storageName = 'token';

  ///@TODO(luffynas): add documentation.
  final storageRefreshToken = 'refresh_token';

  ///@TODO(luffynas): add documentation.
  Future<void> saveToken(String value) async {
    await GetStorage().write(storageName, value);
  }

  ///@TODO(luffynas): add documentation.
  Future<void> saveRefreshToken(String value) async {
    await GetStorage().write(storageRefreshToken, value);
  }

  ///@TODO(luffynas): add documentation.
  Future<String?> getToken() async {
    return GetStorage().read<String>(storageName);
  }

  ///@TODO(luffynas): add documentation.
  Future<String?> getRefreshToken() async {
    return GetStorage().read<String>(storageRefreshToken);
  }

  ///@TODO(luffynas): add documentation.
  Future<bool> hasToken() async {
    final token = GetStorage().read<String>(storageName);
    return token != null && token.isNotEmpty;
  }

  ///@TODO(luffynas): add documentation.
  Future<void> clear() async {
    await GetStorage().remove(storageName);
  }
}
