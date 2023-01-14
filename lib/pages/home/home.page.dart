// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:starter/components/components.dart';
import 'package:starter/configs/configs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PAScaffold(
        kids: Kids(
          mainChild: Container(
            color: Colors.blue,
            child: Text(AppLocalizations.of(context).appTitle),
          ),
        ),
      );
}
