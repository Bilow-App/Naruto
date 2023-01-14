// 📦 Package imports:
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GraphqlServiceAbstract {
  Future<void> initHive();
  GraphQLClient client({required String token});
  Future<Map<String, dynamic>?> query(
    String token,
    dynamic query, {
    String? operationName,
    Map<String, dynamic> variables = const {},
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
    CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    Context? context,
    required Function(dynamic e) onError,
  });
  Future<Map<String, dynamic>?> mutate(
    String token,
    dynamic query, {
    String? operationName,
    Map<String, dynamic> variables = const {},
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
    CacheRereadPolicy? cacheRereadPolicy,
    Context? context,
    Object? optimisticResult,
    OnMutationCompleted? onCompleted,
    OnMutationUpdate? update,
    required Function(dynamic e) onError,
  });
  Stream<QueryResult> subscription(
    String token,
    dynamic document, {
    String? operationName,
    Map<String, dynamic> variables = const {},
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
    CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Context? context,
  });
}
