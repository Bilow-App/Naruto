// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/extensions/extensions.dart';
import 'package:starter/models/models.dart';

part 'navigation_path.model.freezed.dart';

@freezed
class NavigationPath with _$NavigationPath {
  NavigationPath._();

  factory NavigationPath({
    required NavigationRoute route,
    String? tab,
    String? subTab,
    @Default(<String, String>{}) Map<String, String> queryParameters,
    String? fragment,
  }) = _NavigationPath;

  factory NavigationPath.fromUrlPath({required String urlPath}) {
    final logger = GetIt.instance.get<LoggerUtilityAbstract>();
    final navigation = GetIt.instance.get<NavigationUtilityAbstract>();
    const routeIndex = 0;
    const subRouteIndex = 1;

    final parsedUrl = Uri.parse(urlPath);
    final pathSegments = parsedUrl.pathSegments;
    final pathSegmentsLength = pathSegments.length;
    final queryParameters = parsedUrl.queryParameters;
    final fragment = parsedUrl.fragment;

    logger.log(
      '\n------------ FROM URL PATH ------------'
      '\nParsed URL: $parsedUrl'
      '\nPathSegments: $pathSegments'
      '\nPathSegmentsLength: $pathSegmentsLength'
      '\nQueryParameters: $queryParameters'
      '\nFragment: $fragment',
    );

    final routeSegment = pathSegments[routeIndex];
    final routes = navigation.navigationRoutes;
    final navigationPath = NavigationPath(
      route: routes.welcome,
      queryParameters: queryParameters,
      fragment: fragment,
    );

    if (pathSegments.isEmpty || routeSegment == routes.welcome.name) {
      return navigationPath;
    }

    if (routeSegment == routes.loading.name) {
      return navigationPath.copyWith(route: routes.loading);
    }

    if (routeSegment == routes.auth.itself.name) {
      if (pathSegments[subRouteIndex] == routes.auth.register.itself.name) {
        return navigationPath.copyWith(
          route: routes.auth.register.itself,
        );
      }

      return NavigationPath(
        route: routes.auth.itself,
        queryParameters: queryParameters,
      );
    }

    return NavigationPath(
      route: routes.home.itself,
      queryParameters: queryParameters,
    );
  }

  Map<String, String> get params {
    return <String, String>{
      // Main Tab within a route/page
      if (tab != null) RouteParam.tab.name: tab!.kebabCase,
      // Sub Tab within a Tab
      if (subTab != null) RouteParam.subTab.name: subTab!.kebabCase,
      // Fragment are a portion of a page that can be linked to
      if (fragment != null) RouteParam.fragment.name: fragment!.kebabCase,
    };
  }
}

enum RouteParam {
  tab,
  subTab,
  fragment,
}
