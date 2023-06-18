import 'dart:async';
import 'dart:developer';

import 'package:{{name.snakeCase()}}/data/dao/base_dao.dart';
import 'package:get_storage/get_storage.dart';

///
class UserDao implements BaseDao<dynamic> {
  final storageName = 'user_dao';

  @override
  Future<UserDao> init() async {
    await GetStorage.init(storageName);
    return this;
  }

  @override
  FutureOr<Map<String, dynamic>> findAll() async {
    log('message ::: GetStorage(storageName) ::: ${await GetStorage(storageName).initStorage}');
    log('message ::: GetStorage(storageName) ::: ${await GetStorage(storageName).read('users')}');
    final dd = await GetStorage(storageName).read('users');
    if (dd != null) {
      return dd as Map<String, dynamic>;
    } else {
      return {};
    }
  }

  @override
  Future<Map<String, dynamic>?> findOne(String key) async {
    return GetStorage(storageName).read(key);
  }

  @override
  Future<void> remove(String key) async {
    return GetStorage(storageName).remove(key);
  }

  @override
  Future<void> save(
    String key,
    Map<String, dynamic> data,
  ) async {
    return GetStorage(storageName).write(key, data);
  }

  @override
  Future<void> update(String key, Map<String, dynamic> data) async {
    return GetStorage(storageName).write(key, data);
  }
}
