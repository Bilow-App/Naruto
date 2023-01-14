// 🌎 Project imports:

// 🌎 Project imports:
import 'package:starter/models/navigation_route.model.dart';

class NavigationRoutes {
  final welcome = NavigationRoute(
    name: 'welcome',
    path: '/',
    route: '/',
  );
  final loading = NavigationRoute(
    name: 'loading',
    path: '/loading',
    route: '/loading',
  );
  final auth = AuthRoutes();
  final home = HomeRoutes();
}

class AuthRoutes {
  final itself = NavigationRoute(
    name: 'login',
    path: '/auth',
    route: '/auth',
  );
  final register = RegisterRoutes();
}

class RegisterRoutes {
  final itself = NavigationRoute(
    name: 'register',
    path: 'register',
    route: '/auth/register',
  );
}

class HomeRoutes {
  final itself = NavigationRoute(
    name: 'home',
    path: '/home',
    route: '/home',
  );
}

class SettingsRoutes {
  final itself = NavigationRoute(
    name: 'settings',
    path: 'settings',
    route: '/home/settings',
  );
}
