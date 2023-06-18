import 'package:{{name.snakeCase()}}/domain/models/user.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/fetch_user_payload.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/user_repository.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/usecase.dart';

class UserUsecase extends UseCase<List<User>, FetchUserload> {
  UserUsecase({required this.userRepository});
  UserRepository userRepository;

  @override
  Future<List<User>> callFuture(FetchUserload param) async {
    return userRepository.findAll(param: param);
  }

  @override
  Stream<List<User>> callStream(FetchUserload param) async* {
    // yield* userRepository.findAll();
  }
}
