import 'package:{{name.snakeCase()}}/core/models/api_result.dart';
import 'package:{{name.snakeCase()}}/core/storage/auth_storage.dart';
import 'package:{{name.snakeCase()}}/data/datasources/comment_service.dart';
import 'package:{{name.snakeCase()}}/domain/models/auth_entity.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  CommentRepositoryImpl({required this.commentService});
  CommentService commentService;

  AuthStorage authStorage = AuthStorage();

  @override
  Future<ApiResult<AuthEntity>> login({
    required String username,
    required String password,
  }) async {
    final respAuth = await commentService.login(
      username: username,
      password: password,
    );

    // return respAuth.when(success: (success) async {
    //   //save token to AuthStorage
    //   await authStorage.saveToken(success.token!);
    //   return ApiResult.success(data: AuthEntity.fromJson(success.toJson()));
    // }, failure: (failure) {
    //   return ApiResult.failure(error: failure);
    // });

    const fakeToken =
        '4a5e66fa39a03b627db71d405f9709cf19f7b60b8c134b1f6ab3ee8e9b72dbd1';
    await authStorage.saveToken(fakeToken);
    return ApiResult.success(data: AuthEntity.fromJson(<String, dynamic>{}));
  }

  @override
  Future<ApiResult<AuthEntity>> register({
    required String username,
    required String password,
    required String email,
  }) async {
    final respAuth = await commentService.register(
      username: username,
      password: password,
      email: email,
    );

    return respAuth.when(
      success: (success) async {
        // save token
        await authStorage.saveToken(success.token!);
        return ApiResult.success(data: AuthEntity.fromJson(success.toJson()));
      },
      failure: (failure) {
        return ApiResult.failure(error: failure);
      },
    );
  }

  @override
  Future<ApiResult<AuthEntity>> verifyOtp({
    required String token,
    required String otp,
  }) {
    throw UnimplementedError();
  }
}
