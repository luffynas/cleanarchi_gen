import 'package:{{name.snakeCase()}}/core/models/api_result.dart';
import 'package:{{name.snakeCase()}}/domain/models/auth_entity.dart';

abstract class PostRepository {
  Future<ApiResult<AuthEntity>> login({
    required String username,
    required String password,
  });

  Future<ApiResult<AuthEntity>> register({
    required String username,
    required String password,
    required String email,
  });

  Future<ApiResult<AuthEntity>> verifyOtp({
    required String token,
    required String otp,
  });
}
