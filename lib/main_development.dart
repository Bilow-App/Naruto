// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:url_strategy/url_strategy.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/app.dart';
import 'package:starter/configs/configs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();
  initDependencies();

  await dotenv.load(fileName: 'env.development');
  await GetIt.instance.get<SharedPrefsServiceAbstract>().initSharedPrefs();

  runApp(const App(
    environment: Environment.development,
  ));
}
