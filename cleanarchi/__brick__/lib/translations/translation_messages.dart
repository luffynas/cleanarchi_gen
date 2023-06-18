import 'package:get/get.dart';
import 'package:{{name.snakeCase()}}/translations/translation_message_key.dart';

class TranslationMessages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          TranslationMessageKey.hello: 'Hello World',
          TranslationMessageKey.dashboard: 'Dashboard',
          TranslationMessageKey.languageApp: 'Language App',
        },
        'id': {
          TranslationMessageKey.hello: 'Halo Welt',
          TranslationMessageKey.dashboard: 'Halaman Utama',
          TranslationMessageKey.languageApp: 'Bahasa Aplikasi',
        }
      };
}
