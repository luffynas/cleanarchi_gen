import 'package:{{name.snakeCase()}}/domain/models/auth_entity.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/login_payload.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/todo_repository.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/usecase.dart';

class TodoUsecase extends UseCase<AuthEntity, LoginPayload> {
  TodoUsecase({required this.todoRepository});
  TodoRepository todoRepository;

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
