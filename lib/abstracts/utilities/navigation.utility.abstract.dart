// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:starter/configs/configs.dart';
import 'package:starter/models/models.dart';

abstract class NavigationUtilityAbstract {
  NavigationRoutes get navigationRoutes;
  NavigationPath get navigationPath;
  Stream<NavigationPath> get navigationPathStream;

  void go({required NavigationPath path, Object? extra});
  void goNamed({required NavigationPath path});
  void goRoute({required NavigationRoute route});
  void back();
  void setTab(String tab);
  void setSubTab(String subTab);
  void setQueryParameters(Map<String, String> parameters);
  void setFragment(String fragment);

  RouterConfig<Object> get routerConfig;
  RouterDelegate<Object> get routerDelegate;
  RouteInformationParser<Object> get routeInformationParser;
  RouteInformationProvider? get routeInformationProvider;
}
