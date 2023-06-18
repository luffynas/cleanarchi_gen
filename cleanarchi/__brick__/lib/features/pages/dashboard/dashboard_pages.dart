import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:{{name.snakeCase()}}/features/controllers/user/user_controller.dart';
import 'package:{{name.snakeCase()}}/features/pages/dashboard/home_page_view.dart';
import 'package:{{name.snakeCase()}}/features/pages/dashboard/todo_page_view.dart';
import 'package:{{name.snakeCase()}}/features/pages/dashboard/user_page_view.dart';
import 'package:{{name.snakeCase()}}/features/pages/settings/setting_page.dart';
import 'package:{{name.snakeCase()}}/features/widgets/layout/base_layout.dart';
import 'package:{{name.snakeCase()}}/translations/translation_message_key.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int position = 0;

  final pages = [
    const HomePageView(),
    const UserPageView(),
    const TodoPageView()
  ];

  @override
  void initState() {
    Get.find<UserController>().fetch(fresh: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            TranslationMessageKey.dashboard.tr,
            style: AppTypography.appBarTitle,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const SettingPage());
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: pages[position],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(AppIcons.ic_fi_home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.ic_fi_users),
              label: 'Users',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.ic_chat_dots),
              label: 'Todos',
            ),
          ],
          onTap: (index) {
            setState(() {
              position = index;
            });
          },
        ),
      ),
    );
  }
}
