// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/components/components.dart';
import 'package:starter/configs/configs.dart';
import 'package:starter/models/models.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) => PAScaffold(
        kids: Kids(
          mainChild: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: StyledButton(
                      text: AppLocalizations.of(context).getStarted,
                      onTap: () => _navigation.goNamed(
                        path: NavigationPath(
                          route: _navigation.navigationRoutes.auth.itself,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
