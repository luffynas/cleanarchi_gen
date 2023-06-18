import 'package:{{name.snakeCase()}}/core/storage/auth_storage.dart';
import 'package:{{name.snakeCase()}}/data/datasources/user_service.dart';
import 'package:{{name.snakeCase()}}/domain/models/user.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/fetch_user_payload.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required this.userService,
  });

  UserService userService;

  AuthStorage authStorage = AuthStorage();

  @override
  Future<User> delete({required int userId}) {
    throw UnimplementedError();
  }

  @override
  Future<List<User>> findAll({required FetchUserload param}) async {
    //cek in the local DB
    //if exists, load all data
    //else
    //load data from Remote DB
    //save into local DB
    //load data from local DB and transform into Domain Entity
    //Transforming DTO
    final usersDtos = await userService.fetchUsers(param: param);
    final users = usersDtos.map((e) => User.fromJson(e.toJson())).toList();
    return users;
  }

  @override
  Future<User> findOne({required int userId}) {
    //find one from local DB
    //transform data to Domain Entity
    //load from API
    //save to local DB
    //transform data to Domain Entity
    throw UnimplementedError();
  }

  @override
  Future<User> save({required int userId}) {
    throw UnimplementedError();
  }
}
