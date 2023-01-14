// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_route.model.freezed.dart';

@freezed
class NavigationRoute with _$NavigationRoute {
  factory NavigationRoute({
    required final String name,
    required final String path,
    required final String route,
  }) = _NavigationRoute;
}
