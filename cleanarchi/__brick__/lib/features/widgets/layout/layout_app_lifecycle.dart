import 'dart:developer';

import 'package:flutter/material.dart';

class LayoutAppLifecycle with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.paused) {
      log('message ::: this current state ? : $state');
    }
    if (state == AppLifecycleState.resumed) {
      log('message ::: this current state ? : $state');
    }
  }
}
