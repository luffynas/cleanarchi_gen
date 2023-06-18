import 'package:{{name.snakeCase()}}/core/enum/app_state.dart';
import 'package:{{name.snakeCase()}}/core/enum/pull_loadmore_state.dart';
import 'package:{{name.snakeCase()}}/core/errors/app_exception.dart';
import 'package:{{name.snakeCase()}}/domain/models/user.dart';
import 'package:{{name.snakeCase()}}/domain/payloads/fetch_user_payload.dart';
import 'package:{{name.snakeCase()}}/domain/usecase/user_usecase.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class UserController extends GetxController {
  Rx<List<User>> data = Rx(<User>[]);
  Rx<AppState> state = AppState.initial.obs;
  Rx<PullLoadmoreState> pullLoadMoreState = PullLoadmoreState.initial.obs;

  @override
  void onInit() {
    super.onInit();
    state.value = AppState.initial;
    pullLoadMoreState.value = PullLoadmoreState.initial;
  }

  Future<void> fetch({bool fresh = false}) async {
    // page to available User login

    // check connection

    if (fresh) {
      state.value = AppState.loading;
    }

    final payload = FetchUserload(
      fresh: fresh,
      offset: fresh ? 0 : data.value.length,
    );
    final resp = GetIt.I<UserUsecase>().callFuture(payload);

    try {
      final results = await resp;

      if (results.isEmpty) {
        state.value = AppState.empty;
        return;
      }

      data.value.addAll(results);

      if (state.value == AppState.initial || state.value == AppState.loading) {
        state.value = AppState.success;
        pullLoadMoreState.value = PullLoadmoreState.refreshComplete;
      }

      if (state.value != AppState.initial && !fresh) {
        state
          ..value = AppState.initial
          ..value = AppState.success;
        pullLoadMoreState.value = PullLoadmoreState.loadComplete;
      }

      if (results.length < 10) {
        pullLoadMoreState.value = PullLoadmoreState.stopLoadMore;
      }
    } catch (e) {
      throw AppException(message: 'error :: $e');
    }
  }
}
