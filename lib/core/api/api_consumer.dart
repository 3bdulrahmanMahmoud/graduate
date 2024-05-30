
abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparamters,
  });
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparamters,
    bool isFromData = false,
  });
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparamters,
    bool isFromData = false,
  });
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparamters,
    bool isFromData = false,
  });
}
