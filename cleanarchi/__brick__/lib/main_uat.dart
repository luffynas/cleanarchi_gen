import 'package:{{name.snakeCase()}}/flavors.dart';
import 'package:{{name.snakeCase()}}/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.uat;
  await runner.main();
}
