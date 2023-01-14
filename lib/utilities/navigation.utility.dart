// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/configs/configs.dart';
import 'package:starter/models/models.dart';
import 'package:starter/notifiers/notifiers.dart';
import 'package:starter/pages/pages.dart';

class NavigationUtility implements NavigationUtilityAbstract {
  NavigationUtility()
      : _auth = GetIt.instance.get<AuthServiceAbstract>(),
        _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        _navigationPathNotifier = NavigationPathNotifier() {
    _logger.log('🚀 NavigationUtility');

    _goRouter = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: navigationRoutes.welcome.path,
          name: navigationRoutes.welcome.name,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: WelcomePage(
              key: state.pageKey,
            ),
            transitionsBuilder: (context, animation, secAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: navigationRoutes.loading.path,
          name: navigationRoutes.loading.name,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: LoadingPage(
              key: state.pageKey,
            ),
            transitionsBuilder: (context, animation, secAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: navigationRoutes.auth.itself.path,
          name: navigationRoutes.auth.itself.name,
          builder: (context, state) => LoginPage(
            key: state.pageKey,
          ),
          routes: <RouteBase>[
            GoRoute(
              path: navigationRoutes.auth.register.itself.path,
              name: navigationRoutes.auth.register.itself.name,
              builder: (context, state) => RegisterPage(
                key: state.pageKey,
              ),
            ),
          ],
        ),
        GoRoute(
          path: navigationRoutes.home.itself.path,
          name: navigationRoutes.home.itself.name,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: HomePage(
              key: state.pageKey,
            ),
            transitionsBuilder: (context, animation, secAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
      ],
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: ErrorPage(
          key: state.pageKey,
        ),
      ),
      redirect: (context, routerState) {
        final isLoggedIn = _auth.currentUser != null;
        final isGoingToWelcome =
            routerState.location == navigationRoutes.welcome.path;
        final isGoingToLoading = routerState.location.startsWith(
          navigationRoutes.loading.path,
        );
        final isGoingToAuth = routerState.location.startsWith(
          navigationRoutes.auth.itself.path,
        );
        final isGoingToHome = routerState.location.startsWith(
          navigationRoutes.home.itself.path,
        );

        _logger.log(
          '\n------------ Redirect ------------'
          '\n-> Location: ${routerState.location}'
          '\n-> Name: ${routerState.name}'
          '\n-> Path: ${routerState.path}'
          '\n-> Redirect: ${routerState.queryParams['redirect']}'
          '\n-> isLoggedIn: $isLoggedIn'
          '\n-> isGoingToWelcome: $isGoingToWelcome'
          '\n-> isGoingToLoading: $isGoingToLoading'
          '\n-> isGoingToAuth: $isGoingToAuth'
          '\n-> isGoingToHome: $isGoingToHome',
        );

        if (!isLoggedIn) {
          if (isGoingToWelcome) {
            return null;
          }
          if (isGoingToAuth) {
            return null;
          }

          return navigationRoutes.welcome.path;
        }

        if ((isGoingToWelcome || isGoingToLoading || isGoingToAuth) &&
            isLoggedIn) {
          _logger.log('-> Redirecting to Home');

          return routerState.namedLocation(
            'home',
            params: <String, String>{
              RouteParam.tab.name: 'dashboard',
            },
          );
        }

        _navigationPathNotifier.navigationPath = NavigationPath.fromUrlPath(
          urlPath: routerState.location,
        );

        return null;
      },
      refreshListenable: RefreshStream(_auth.userStateChange()),
      initialLocation: navigationRoutes.welcome.path,
      debugLogDiagnostics: true,
    );
  }

  final AuthServiceAbstract _auth;
  final LoggerUtilityAbstract _logger;
  final NavigationPathNotifier _navigationPathNotifier;
  late final GoRouter _goRouter;

  @override
  NavigationRoutes get navigationRoutes => NavigationRoutes();

  @override
  NavigationPath get navigationPath {
    return _navigationPathNotifier.navigationPath;
  }

  @override
  Stream<NavigationPath> get navigationPathStream {
    return _navigationPathNotifier.navigationPathStream;
  }

  @override
  RouterConfig<Object> get routerConfig {
    return _goRouter;
  }

  @override
  RouteInformationParser<Object> get routeInformationParser {
    return _goRouter.routeInformationParser;
  }

  @override
  RouteInformationProvider? get routeInformationProvider {
    return _goRouter.routeInformationProvider;
  }

  @override
  RouterDelegate<Object> get routerDelegate {
    return _goRouter.routerDelegate;
  }

  @override
  void go({required NavigationPath path, Object? extra}) {
    _goRouter.go(path.route.name, extra: extra);
  }

  @override
  void goNamed({required NavigationPath path}) {
    _goRouter.goNamed(
      path.route.name,
      params: path.params,
      queryParams: path.queryParameters,
    );
  }

  @override
  void goRoute({required NavigationRoute route}) {
    _goRouter.go(route.route);
  }

  @override
  void back() => _goRouter.pop();

  @override
  void setTab(String tab) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      tab: tab,
    );

    _goRouter.goNamed(
      updatedPath.route.name,
      params: updatedPath.params,
      queryParams: updatedPath.queryParameters,
    );
  }

  @override
  void setSubTab(String subTab) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      subTab: subTab,
    );

    _goRouter.goNamed(
      updatedPath.route.name,
      params: updatedPath.params,
      queryParams: updatedPath.queryParameters,
    );
  }

  @override
  void setQueryParameters(Map<String, String> queryParameters) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      queryParameters: Map<String, String>.from(
        _navigationPathNotifier.navigationPath.queryParameters,
      )..addAll(queryParameters),
    );

    _goRouter.goNamed(
      updatedPath.route.name,
      params: updatedPath.params,
      queryParams: updatedPath.queryParameters,
    );
  }

  @override
  void setFragment(String fragment) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      fragment: fragment,
    );

    _goRouter.goNamed(
      updatedPath.route.name,
      params: updatedPath.params,
      queryParams: updatedPath.queryParameters,
    );
  }

  Map<String, String> getRedirectParam(String targetLocation) {
    final target = Uri.parse(targetLocation);

    if (target.queryParameters.containsKey('redirect')) {
      return target.queryParameters;
    }

    return targetLocation == '/'
        ? <String, String>{}
        : <String, String>{'redirect': targetLocation};
  }
}
