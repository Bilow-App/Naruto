// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Icon get paBackButton => _setIconFor(
      web: Icons.arrow_back_rounded,
      ios: Icons.arrow_back_ios,
      android: Icons.arrow_back,
    );

Icon get paForwardButton => _setIconFor(
      web: Icons.arrow_forward_rounded,
      ios: Icons.arrow_forward_ios,
      android: Icons.arrow_forward,
    );

Icon get paCloseButton => _setIconFor(
      web: Icons.close_rounded,
      ios: Icons.close,
      android: Icons.close,
    );

Icon _setIconFor({
  required IconData web,
  IconData? ios,
  IconData? android,
}) =>
    Icon(
      kIsWeb
          ? web
          : Platform.isIOS
              ? ios ?? web
              : android ?? web,
    );
