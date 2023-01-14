// 📦 Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/configs/configs.dart';

class SharedPrefsService implements SharedPrefsServiceAbstract {
  final Future<SharedPreferences> _prefs;

  SharedPrefsService({Future<SharedPreferences>? prefs})
      : _prefs = prefs ?? SharedPreferences.getInstance();

  @override
  Future<void> initSharedPrefs() async {
    final didSetSharedPrefs = await getItem(key: kDidSetSharedPrefs) as bool?;

    if (didSetSharedPrefs == null) {
      await setItem(key: kDidSetSharedPrefs, value: true);
      await setItem(key: kAppThemeLight, value: true);
      await setItem(
        type: SharedPrefsType.string,
        key: kDateLastOpened,
        value: DateTime.now().toIso8601String(),
      );
      await setItem(key: kHasReviewed, value: false);
    }
  }

  @override
  Future<bool> setItem({
    SharedPrefsType type = SharedPrefsType.bool,
    required String key,
    required value,
  }) async {
    final prefs = await _prefs;

    switch (type) {
      case SharedPrefsType.bool:
        return prefs.setBool(key, value);
      case SharedPrefsType.double:
        return prefs.setDouble(key, value);
      case SharedPrefsType.int:
        return prefs.setInt(key, value);
      case SharedPrefsType.string:
        return prefs.setString(key, value);
    }
  }

  @override
  Future<dynamic> getItem({
    SharedPrefsType type = SharedPrefsType.bool,
    required String key,
  }) async {
    final prefs = await _prefs;

    switch (type) {
      case SharedPrefsType.bool:
        return prefs.getBool(key);
      case SharedPrefsType.double:
        return prefs.getDouble(key);
      case SharedPrefsType.int:
        return prefs.getInt(key);
      case SharedPrefsType.string:
        return prefs.getString(key);
    }
  }
}
