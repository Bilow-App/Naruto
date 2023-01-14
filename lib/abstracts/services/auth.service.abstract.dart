// 🌎 Project imports:
import 'package:starter/models/models.dart';

abstract class AuthServiceAbstract {
  User? get currentUser;
  Stream userStateChange();
}
