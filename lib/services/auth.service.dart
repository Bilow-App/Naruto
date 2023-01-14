// 🎯 Dart imports:
import 'dart:async';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/models/models.dart';

class AuthService implements AuthServiceAbstract {

  @override
  User? get currentUser => null; // TODO: implement currentUser

  @override
  Stream userStateChange() {
    // TODO: implement userStateChange
    return StreamController<User?>().stream;
  }
}
