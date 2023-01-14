// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:starter/configs/configs.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Text(AppLocalizations.of(context).unknownError),
      ),
    );
  }
}
