import 'package:{{name.snakeCase()}}/data/datasources/comment_service.dart';
import 'package:{{name.snakeCase()}}/data/datasources/post_service.dart';
import 'package:{{name.snakeCase()}}/data/datasources/todo_service.dart';
import 'package:{{name.snakeCase()}}/data/datasources/user/user_local_datasource.dart';
import 'package:{{name.snakeCase()}}/data/datasources/user/user_remote_datasource.dart';
import 'package:{{name.snakeCase()}}/data/datasources/user_service.dart';
import 'package:{{name.snakeCase()}}/data/repositories/comment_repository_impl.dart';
import 'package:{{name.snakeCase()}}/data/repositories/post_repository_impl.dart';
import 'package:{{name.snakeCase()}}/data/repositories/todo_repository_impl.dart';
import 'package:{{name.snakeCase()}}/data/repositories/user_repository_impl.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/comment_repository.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/post_repository.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/todo_repository.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/user_repository.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/comment_usecase.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/post_usecase.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/todo_usecase.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/user_usecase.dart';
import 'package:{{name.snakeCase()}}/features/controllers/user/user_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class FeatureInjection {
  static Future<void> init() async {
    //datasource Injection
    GetIt.I.registerSingleton<UserRemoteDataSource>(UserRemoteDataSource());
    GetIt.I.registerSingleton<UserLocalDataSource>(UserLocalDataSource());

    //service API Injection
    GetIt.I.registerSingleton<UserService>(
      UserService(
        local: GetIt.I<UserLocalDataSource>(),
        remote: GetIt.I<UserRemoteDataSource>(),
      ),
    );
    GetIt.I.registerSingleton<PostService>(PostService());
    GetIt.I.registerSingleton<CommentService>(CommentService());
    GetIt.I.registerSingleton<TodoService>(TodoService());

    //Repository Injection
    GetIt.I.registerSingleton<UserRepository>(
      UserRepositoryImpl(
        userService: GetIt.I<UserService>(),
      ),
    );
    GetIt.I.registerSingleton<PostRepository>(
      PostRepositoryImpl(
        postService: GetIt.I<PostService>(),
      ),
    );
    GetIt.I.registerSingleton<TodoRepository>(
      TodoRepositoryImpl(
        todoService: GetIt.I<TodoService>(),
      ),
    );
    GetIt.I.registerSingleton<CommentRepository>(
      CommentRepositoryImpl(
        commentService: GetIt.I<CommentService>(),
      ),
    );

    //Usecase Injection
    GetIt.I.registerSingleton<UserUsecase>(
      UserUsecase(
        userRepository: GetIt.I<UserRepository>(),
      ),
    );
    GetIt.I.registerSingleton<PostUsecase>(
      PostUsecase(
        postRepository: GetIt.I<PostRepository>(),
      ),
    );
    GetIt.I.registerSingleton<TodoUsecase>(
      TodoUsecase(
        todoRepository: GetIt.I<TodoRepository>(),
      ),
    );
    GetIt.I.registerSingleton<CommentUsecase>(
      CommentUsecase(
        commentRepository: GetIt.I<CommentRepository>(),
      ),
    );

    //Controller
    Get.put(UserController());
  }
}
