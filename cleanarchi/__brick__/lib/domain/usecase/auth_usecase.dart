import 'package:{{name.snakeCase()}}/core/models/api_result.dart';
import 'package:{{name.snakeCase()}}/domain/models/auth_entity.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/login_payload.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/auth_repository.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/usecase.dart';

class AuthLoginUsecase extends UseCase<AuthEntity, LoginPayload> {
  AuthLoginUsecase({required this.authRepository});
  AuthRepository authRepository;

  @override
  Future<ApiResult<AuthEntity>> call(LoginPayload param) async {
    return authRepository.login(
      username: param.username,
      password: param.password,
    );
  }

  @override
  Future<AuthEntity> callFuture(LoginPayload param) {
    // TODO: implement callFuture
    throw UnimplementedError();
  }

  @override
  Stream<AuthEntity> callStream(LoginPayload param) {
    // TODO: implement callStream
    throw UnimplementedError();
  }
}

class AuthRegisterUsecase extends UseCase<AuthEntity, LoginPayload> {
  AuthRegisterUsecase({required this.authRepository});
  AuthRepository authRepository;

  // @override
  // Future<AuthEntity> callFuture(LoginPayload param) async {
  //   // return authRepository.login(
  //   //   username: param.username,
  //   //   password: param.password,
  //   // );
  // }

  @override
  Stream<AuthEntity> callStream(LoginPayload param) {
    // TODO: implement callStream
    throw UnimplementedError();
  }

  @override
  Future<AuthEntity> callFuture(LoginPayload param) {
    // TODO: implement callFuture
    throw UnimplementedError();
  }
}
