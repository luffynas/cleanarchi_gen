import 'package:{{name.snakeCase()}}/core/enum/app_state.dart';
import 'package:{{name.snakeCase()}}/domain/models/auth_entity.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/login_payload.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/auth_usecase.dart';
import 'package:{{name.snakeCase()}}/features/widgets/loading/progress_loader.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class AuthLoginController extends GetxController {
  Rx<AuthEntity> data = Rx(AuthEntity());
  Rx<AppState> state = AppState.initial.obs;

  Future<void> login() async {
    // page to available User login

    // check connection

    showLoading('Please wait....');
    state.value = AppState.initial;
    final payload = LoginPayload(username: 'username', password: 'password');
    final resp = await GetIt.I<AuthLoginUsecase>().callFuture(payload);
    // resp.when(
    //   success: (authEntity) {
    //     dissmissLoading();
    //     data.value = authEntity;
    //     state.value = AppState.success;
    //   },
    //   failure: (failure) {
    //     dissmissLoading();
    //     state.value = AppState.failure;
    //     return failure;
    //   },
    // );
  }
}
