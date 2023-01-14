// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Environment Variables
final String kEnvMode = (dotenv.env['MODE'])!;
final String kServer = kIsWeb
    ? (dotenv.env['SERVER_WEB'])!
    : Platform.isIOS || Platform.isMacOS
        ? (dotenv.env['SERVER_IOS'])!
        : (dotenv.env['SERVER_ANDROID'])!;
final String kWebSocket = kIsWeb
    ? (dotenv.env['WEBSOCKET_WEB'])!
    : Platform.isIOS || Platform.isMacOS
        ? (dotenv.env['WEBSOCKET_IOS'])!
        : (dotenv.env['WEBSOCKET_ANDROID'])!;

// Constants
const String kAppTitle = 'BilowApp';

// Shared Preferences
const String kDidSetSharedPrefs = 'bilowapp_did_set_shared_prefs';
const String kDateLastOpened = 'bilowapp_date_last_opened';
const String kAppThemeLight = 'bilowapp_app_theme_light';
const String kHasReviewed = 'bilowapp_has_reviewed';
