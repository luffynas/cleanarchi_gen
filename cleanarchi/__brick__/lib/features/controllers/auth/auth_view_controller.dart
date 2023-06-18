import 'package:{{name.snakeCase()}}/features/controllers/auth/auth_state.dart';
import 'package:get/get.dart';

class AuthViewController extends GetxController {
  Rx<AuthPageChanged> authPageChanged = AuthPageChanged.initial.obs;

  Future<void> onPageChanged(AuthPageChanged page) async {
    // page changed Login, Register, VerifyOTP
    authPageChanged.value = page;
  }
}
