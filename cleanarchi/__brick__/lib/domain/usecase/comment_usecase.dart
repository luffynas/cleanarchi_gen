import 'package:{{name.snakeCase()}}/domain/models/auth_entity.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/login_payload.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/comment_repository.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/usecase.dart';

class CommentUsecase extends UseCase<AuthEntity, LoginPayload> {
  CommentUsecase({required this.commentRepository});
  CommentRepository commentRepository;

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
