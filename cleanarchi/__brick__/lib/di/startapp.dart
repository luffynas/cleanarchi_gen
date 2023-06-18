import 'package:{{name.snakeCase()}}/di/core_injection.dart';
import 'package:{{name.snakeCase()}}/di/feature_injection.dart';

class StartApp {
  static void init() {
    CoreInjection.init();
    FeatureInjection.init();
  }
}
