// this class purely request and response from API
import 'package:{{name.snakeCase()}}/core/models/api_result.dart';
import 'package:{{name.snakeCase()}}/core/networks/http.dart';
import 'package:{{name.snakeCase()}}/data/dto/user_dto.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/fetch_user_payload.dart';
import 'package:get_it/get_it.dart';

///
class UserRemoteDataSource {
  final XHttp _xHttp = GetIt.I<XHttp>();

  Future<ApiResult<List<dynamic>>> getUsers({
    required FetchUserload param,
  }) async {
    return _xHttp.get(
      '/users',
      params: {
        'limit': param.limit,
        'offset': param.offset,
      },
      onSuccess: (response) {
        final data = (response.data)
            ?.map(
              (e) => UserDto.fromJson(e as Map<String, dynamic>),
            )
            .toList();

        return data!;
      },
    );
  }

  Future<ApiResult<UserDto>> findUser(int userId) async {
    return _xHttp.get(
      '/users/$userId',
      onSuccess: (response) {
        return UserDto.fromJson(response.data!.toJson());
      },
    );
  }

  Future<ApiResult<UserDto>> deleteUser(int userId) async {
    return _xHttp.post(
      '/users',
      data: {},
      onSuccess: (response) {
        return UserDto.fromJson(response.data!.toJson());
      },
    );
  }

  Future<ApiResult<UserDto>> createUser(int userId) async {
    return _xHttp.post(
      '/users',
      data: {},
      onSuccess: (response) {
        return UserDto.fromJson(response.data!.toJson());
      },
    );
  }
}
