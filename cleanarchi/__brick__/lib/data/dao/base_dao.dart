import 'dart:async';

abstract class BaseDao<T> {
  Future<T> init();
  Future<T> save(String key, Map<String, dynamic> data);
  FutureOr<T> findAll();
  Future<T> findOne(String key);
  Future<T> update(String key, Map<String, dynamic> data);
  Future<T> remove(String key);
}
