import 'package:shared_preferences/shared_preferences.dart';
import 'package:showcase_example/showcase/showcase_keys.dart';

class ShowcaseHelper {
  static const String storageKeyPrefix = 'showcase_';

  // enum을 사용하여 storage key 생성
  static String getStorageKey(ShowcasePage page) {
    return '$storageKeyPrefix${page.name}';
  }

  static Future<bool> hasShownShowcase(ShowcasePage page) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(getStorageKey(page)) ?? false;
  }

  static Future<void> markShowcaseComplete(ShowcasePage page) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(getStorageKey(page), true);
  }

  static Future<void> resetAllShowcases() async {
    final prefs = await SharedPreferences.getInstance();
    final keys =
        prefs.getKeys().where((key) => key.startsWith(storageKeyPrefix));

    for (final key in keys) {
      await prefs.remove(key);
    }
  }
}
