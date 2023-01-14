// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/components/components.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({Key? key}) : super(key: key);

  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) => PAScaffold(
        leading: IconButton(
          icon: paBackButton,
          onPressed: () => _navigation.back(),
        ),
        kids: const Kids(
          mainChild: Center(
            child: Text('Register Page'),
          ),
        ),
      );
}
