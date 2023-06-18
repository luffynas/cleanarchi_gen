// this class purely request and response from API
import 'package:{{name.snakeCase()}}/data/datasources/user/user_local_datasource.dart';
import 'package:{{name.snakeCase()}}/data/datasources/user/user_remote_datasource.dart';
import 'package:{{name.snakeCase()}}/data/dto/user_dto.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/fetch_user_payload.dart';

///
class UserService {
  UserService({required this.local, required this.remote});

  final UserRemoteDataSource remote;
  final UserLocalDataSource local;

  Future<List<UserDto>> fetchUsers({required FetchUserload param}) async {
    final userRemote = await remote.getUsers(param: param);
    return userRemote.map(
      success: (success) {
        return success.data as List<UserDto>;
      },
      failure: (failure) {
        return [];
      },
    );
  }
}
