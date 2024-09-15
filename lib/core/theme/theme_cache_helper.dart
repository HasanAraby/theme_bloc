import 'package:theme_bloc/cache_helper.dart';

class ThemeCacheHelper {
  Future<void> cacheThemeIndex(int themeIndex) async {
    shPrefs.setInt('THEME_INDEX', themeIndex);
  }

  Future<int> getCachedThemeIndex() async {
    final cachedThemeIndex = shPrefs.getInt('THEME_INDEX');
    if (cachedThemeIndex != null) {
      return cachedThemeIndex;
    }
    return 0;
  }
}
