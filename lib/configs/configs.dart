// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

export 'constants.configs.dart';
export 'dependencies.configs.dart';
export 'localizations.configs.dart';
export 'navigation_routes.configs.dart';

class Configs {
  static const edgeInsetsAll = EdgeInsets.all(25.0);
  static const edgeInsetsHor = EdgeInsets.symmetric(horizontal: 25);
  static const edgeInsetsVer = EdgeInsets.symmetric(vertical: 25);

  static const Duration durationAnim = Duration(milliseconds: 1000);
  static const Duration durationDelayAnim = Duration(milliseconds: 500);

  static ScrollPhysics scrollPhysics = kIsWeb
      ? const BouncingScrollPhysics()
      : Platform.isIOS
          ? const AlwaysScrollableScrollPhysics()
          : const BouncingScrollPhysics();

  static double appBarHeight = kIsWeb
      ? AppBar().preferredSize.height
      : Platform.isIOS
          ? const CupertinoNavigationBar().preferredSize.height
          : AppBar().preferredSize.height;
}
