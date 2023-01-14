abstract class SharedPrefsServiceAbstract {
  Future<void> initSharedPrefs();

  Future<bool> setItem({
    SharedPrefsType type = SharedPrefsType.bool,
    required String key,
    required value,
  });

  Future<dynamic> getItem({
    SharedPrefsType type = SharedPrefsType.bool,
    required String key,
  });
}

enum SharedPrefsType {
  bool,
  double,
  int,
  string,
}
