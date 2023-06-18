import 'package:{{name.snakeCase()}}/features/widgets/layout/layout_app_lifecycle.dart';
import 'package:flutter/material.dart';

class BaseLayout extends StatefulWidget {
  const BaseLayout({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(LayoutAppLifecycle());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(LayoutAppLifecycle());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //handle internet connection

    //handle authorization

    //handle global notif

    //default Widget use SafeArea
    return SafeArea(
      child: widget.child,
    );
  }
}
