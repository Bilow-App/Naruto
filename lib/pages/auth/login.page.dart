// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/components/components.dart';
import 'package:starter/configs/configs.dart';
import 'package:starter/models/models.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();
  final _toast = GetIt.instance.get<ToastUtilityAbstract>();
  NavigationRoutes get _routes => _navigation.navigationRoutes;

  @override
  Widget build(BuildContext context) => PAScaffold(
        leading: IconButton(
          icon: paBackButton,
          onPressed: () => _navigation.goNamed(
            path: NavigationPath(
              route: _navigation.navigationRoutes.welcome,
            ),
          ),
        ),
        kids: Kids(
          mainChild: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: StyledButton(
                      text: AppLocalizations.of(context).login,
                      onTap: () {
                        _toast.show(
                          context,
                          title: AppLocalizations.of(context).warning,
                          description: AppLocalizations.of(context).loginHelper,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: StyledButton(
                      text: AppLocalizations.of(context).register,
                      onTap: () => _navigation.goNamed(
                        path: NavigationPath(
                          route: _routes.auth.register.itself,
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
