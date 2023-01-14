// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/blocs/blocs.dart';
import 'package:starter/components/components.dart';
import 'package:starter/configs/configs.dart';
import 'package:starter/extensions/extensions.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
    required this.environment,
  }) : super(key: key);

  final Environment environment;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();
  final _review = GetIt.instance.get<ReviewServiceAbstract>();
  final _sharedPrefs = GetIt.instance.get<SharedPrefsServiceAbstract>();
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 30), _requestReview);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NetworkBloc>(
          create: (BuildContext context) => NetworkBloc()..hydrate(),
        ),
      ],
      child: PARouterApp(
        platformAware: false,
        scaffoldMessengerKey: _scaffoldMessengerKey,
        routeInformationProvider: _navigation.routeInformationProvider,
        routeInformationParser: _navigation.routeInformationParser,
        routerDelegate: _navigation.routerDelegate,
        title: kAppTitle,
        localizationsDelegates: const <LocalizationsDelegate>[
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: const <Locale>[
          Locale('en', ''),
        ],
        onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      ),
    );
  }

  Future<void> _requestReview() async {
    final hasReviewed = await _sharedPrefs.getItem(key: kHasReviewed) as bool?;

    if (hasReviewed != null && !hasReviewed) {
      final dateLastOpened = await _sharedPrefs.getItem(
        key: kDateLastOpened,
      ) as String?;

      if (dateLastOpened != null) {
        final date = DateTime.parse(dateLastOpened);

        if (date.hasPassedSevenDays) {
          _sharedPrefs.setItem(
            type: SharedPrefsType.string,
            key: kDateLastOpened,
            value: DateTime.now().toIso8601String(),
          );

          if (await _review.updateAvailable()) {
            await _review.request();
            await _sharedPrefs.setItem(key: kHasReviewed, value: true);
          }
        }
      }
    }
  }
}

enum Environment {
  development,
  production,
  staging,
}
