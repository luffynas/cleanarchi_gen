import 'package:{{name.snakeCase()}}/domain/models/user.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/fetch_user_payload.dart';

abstract class UserRepository {
  Future<List<User>> findAll({required FetchUserload param});

  Future<User> findOne({required int userId});

  Future<User> save({required int userId});

  Future<User> delete({required int userId});
}
