import 'package:{{name.snakeCase()}}/data/dao/base_dao.dart';
import 'package:get_storage/get_storage.dart';

class PostDao implements BaseDao<dynamic> {
  final storageName = 'post_dao';

  @override
  Future<List<Map<String, dynamic>>> findAll() async {
    return [];
  }

  @override
  Future findOne(String key) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<PostDao> init() async {
    await GetStorage.init(storageName);
    return this;
  }

  @override
  Future remove(String key) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future save(String key, Map<String, dynamic> data) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future update(String key, Map<String, dynamic> data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
