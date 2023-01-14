abstract class RestServiceAbstract {
  Future<dynamic> create(
    String path,
    Map<String, dynamic> params,
  );
  Future<dynamic> read(
    String path, {
    Map<String, dynamic> params = const {},
  });
  Future<dynamic> update(
    String path, {
    Map<String, dynamic> params = const {},
  });
  Future<dynamic> delete(String path);
}
