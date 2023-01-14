// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';

// 🌎 Project imports:

class NetworkService implements NetworkServiceAbstract {
  @override
  StreamSubscription<ConnectivityResult> onConnectivityChanged({
    required Function() onDisconnected,
    required Function() onConnected,
  }) {
    return Connectivity().onConnectivityChanged.listen((event) {
      switch (event) {
        case ConnectivityResult.none:
          onDisconnected();
          break;
        case ConnectivityResult.mobile:
        case ConnectivityResult.wifi:
        case ConnectivityResult.bluetooth:
        case ConnectivityResult.ethernet:
        case ConnectivityResult.vpn:
          onConnected();
          break;
      }
    });
  }
}
