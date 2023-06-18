import 'package:{{name.snakeCase()}}/domain/models/auth_entity.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/login_payload.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/post_repository.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/usecase.dart';

class PostUsecase extends UseCase<AuthEntity, LoginPayload> {
  PostUsecase({required this.postRepository});
  PostRepository postRepository;

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
