// this class purely request and response from API
import 'package:{{name.snakeCase()}}/core/models/api_result.dart';
import 'package:{{name.snakeCase()}}/core/networks/http.dart';
import 'package:{{name.snakeCase()}}/data/dto/auth/auth.dart';
import 'package:get_it/get_it.dart';

///
class CommentService {
  final XHttp _xHttp = GetIt.I<XHttp>();

  Future<ApiResult<Auth>> login({
    required String username,
    required String password,
  }) async {
    return _xHttp.post(
      '/login',
      data: {
        'username': username,
        'password': password,
      },
      onSuccess: (response) {
        return Auth.fromJson(response.data!.toJson());
      },
    );
  }

  Future<ApiResult<Auth>> register({
    required String username,
    required String password,
    required String email,
  }) async {
    return _xHttp.post(
      '/register',
      data: {
        'username': username,
        'password': password,
        'email': email,
      },
      onSuccess: (response) {
        return Auth.fromJson(response.data!.toJson());
      },
    );
  }
}
