import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/core/enum/main_state.dart';
import 'package:{{name.snakeCase()}}/core/services/storage_repository.dart';

class MainController extends GetxController {
  Rx<MainState> mainState = MainState.splash.obs;

  // final authStorage = AuthStorage();

  // final configStorage = ConfigStorage();
  final storage = GetIt.I<StorageRepository>();

  @override
  void onInit() {
    mainState.value = MainState.splash;
    super.onInit();
  }

  ///@TODO(luffynas): add documentation.
  Future<void> initMain() async {
    if (await storage.getConfigStorage().getFirstApp()) {
      mainState.value = MainState.onboarding;
    } else {
      if (await storage.getAuthStorage().hasToken()) {
        mainState.value = MainState.authorized;
      } else {
        mainState.value = MainState.unauthorized;
      }
    }
  }

  ///@TODO(luffynas): add documentation.
  Future<void> exitOnboarding() async {
    await storage.getConfigStorage().isFirstApp(value: false);
    await initMain();
  }

  Future<void> setDummyToken() async {
    await storage.getAuthStorage().saveToken('dummyToken');
  }
}
