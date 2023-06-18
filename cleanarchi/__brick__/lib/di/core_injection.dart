import 'package:{{name.snakeCase()}}/core/networks/http.dart';
import 'package:{{name.snakeCase()}}/core/services/storage_repository.dart';
import 'package:{{name.snakeCase()}}/core/services/storage_repository_impl.dart';
import 'package:{{name.snakeCase()}}/data/datasources/auth_service.dart';
import 'package:{{name.snakeCase()}}/data/repositories/auth_repository_impl.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/auth_repository.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/auth_usecase.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_login_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_register_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_verify_otp_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_view_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/main_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/theme_controller.dart';
import 'package:{{name.snakeCase()}}/features/controllers/translate_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class CoreInjection {
  static Future<void> init() async {
    //dio Network Injection
    GetIt.I.registerSingleton<XHttp>(XHttp());

    GetIt.I.registerSingleton<StorageRepository>(
      StorageRepositoryImpl(),
    );

    //service API Injection
    GetIt.I.registerSingleton<AuthService>(AuthService());

    //Repository Injection
    GetIt.I.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(
        authService: GetIt.I<AuthService>(),
      ),
    );

    //Usecase Injection
    GetIt.I.registerSingleton<AuthLoginUsecase>(
      AuthLoginUsecase(
        authRepository: GetIt.I<AuthRepository>(),
      ),
    );
    GetIt.I.registerSingleton<AuthRegisterUsecase>(
      AuthRegisterUsecase(
        authRepository: GetIt.I<AuthRepository>(),
      ),
    );

    //Controller
    Get
      ..put(MainController())
      ..put(ThemeController())
      ..put(TranslateController())
      ..put(AuthViewController())
      ..put(AuthLoginController())
      ..put(AuthRegisterController())
      ..put(AuthVerifyOtpController());
  }
}
