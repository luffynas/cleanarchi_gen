import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:{{name.snakeCase()}}/core/enum/app_state.dart';
import 'package:{{name.snakeCase()}}/core/enum/pull_loadmore_state.dart';
import 'package:{{name.snakeCase()}}/core/ui/styles/style.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:{{name.snakeCase()}}/features/controllers/user/user_controller.dart';
import 'package:{{name.snakeCase()}}/features/widgets/loading/divider/divider_widget.dart';
import 'package:{{name.snakeCase()}}/features/widgets/loading/loading_indicator.dart';
import 'package:{{name.snakeCase()}}/features/widgets/loading/smart_refresher_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var _refreshController = RefreshController();
  final userController = Get.find<UserController>();

  Future<void> _onRefresh(
    BuildContext context,
    RefreshController controller,
  ) async {
    await userController.fetch(fresh: true);
  }

  Future<void> _onLoading(
    BuildContext context,
    RefreshController controller,
  ) async {
    await userController.fetch();
  }

  // @override
  // void didChangeDependencies() {
  //   log('message ::: didChangeDependencies');
  //   userController.pullLoadMoreState.stream.listen((event) {
  //     log('message :::: event ::: $event');
  //     switch (event) {
  //       case PullLoadmoreState.initial:
  //         break;
  //       case PullLoadmoreState.refreshComplete:
  //         _refreshController.refreshCompleted();
  //       case PullLoadmoreState.loadComplete:
  //         if (mounted) _refreshController.loadComplete();
  //       case PullLoadmoreState.stopLoadMore:
  //         _refreshController.loadComplete();
  //         _refreshController.loadNoData();
  //     }
  //   });
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return GetX<UserController>(
      builder: (controller) {
        log('message :: controller.state.value :: ${controller.state.value}');
        log('message :: controller.state.value :: ${controller.pullLoadMoreState.value}');
        switch (controller.pullLoadMoreState.value) {
          case PullLoadmoreState.initial:
            break;
          case PullLoadmoreState.refreshComplete:
            _refreshController.refreshCompleted();
            break;
          case PullLoadmoreState.loadComplete:
            if (mounted) _refreshController.loadComplete();
            break;
          case PullLoadmoreState.stopLoadMore:
            _refreshController.loadComplete();
            _refreshController.loadNoData();
            break;
        }

        switch (controller.state.value) {
          case AppState.initial:
            return const LoadingIndicator();
          case AppState.loading:
            return const LoadingIndicator();
          case AppState.success:
            return SmartRefresherWidget(
                key: const PageStorageKey('smart_refresh_users_pages'),
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                builder: (context, refreshController) {
                  _refreshController = refreshController;
                  return ListView.separated(
                    itemCount: controller.data.value.length,
                    itemBuilder: (context, index) {
                      final user = controller.data.value[index];
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: AppRadius.lg,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'ID :',
                                    style: AppTypography.appBarTitle,
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Text(
                                    '${user.id}',
                                    style: AppTypography.smallRegular,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  flex: 2,
                                  child: Text('Name :'),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Text(
                                    '${user.name}',
                                    style: AppTypography.smallRegular,
                                  ),
                                ),
                              ],
                            ),
                            const Text('Email'),
                            const Text('Gender'),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const DividerWidget();
                    },
                  );
                });
          case AppState.empty:
            return const Text('Empty Data');
          case AppState.failure:
            return const Text('Failure Data');
        }
      },
    );
  }
}
