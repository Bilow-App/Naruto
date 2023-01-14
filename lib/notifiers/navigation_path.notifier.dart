// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:rxdart/rxdart.dart';

// 🌎 Project imports:
import 'package:starter/configs/navigation_routes.configs.dart';
import 'package:starter/models/models.dart';

class NavigationPathNotifier extends ChangeNotifier {
  NavigationPathNotifier() {
    _navigationPathSubject = BehaviorSubject.seeded(_navigationPath);
    notifyListeners();
  }

  late final BehaviorSubject<NavigationPath> _navigationPathSubject;
  var _navigationPath = NavigationPath(route: NavigationRoutes().loading);

  Stream<NavigationPath> get navigationPathStream =>
      _navigationPathSubject.stream;
  NavigationPath get navigationPath => _navigationPath;

  set navigationPath(NavigationPath path) {
    _navigationPath = path;

    notifyListeners();
  }

  @override
  void notifyListeners() {
    _navigationPathSubject.add(_navigationPath);

    super.notifyListeners();
  }

  @override
  void dispose() {
    if (!_navigationPathSubject.isClosed) _navigationPathSubject.close();

    super.dispose();
  }
}
