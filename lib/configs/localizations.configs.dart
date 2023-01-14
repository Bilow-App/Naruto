// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:intl/intl.dart';

// 🌎 Project imports:
import 'package:starter/l10n/messages_all.dart';

/*
 * Instructions to generate the localization files:
 *
 * 1. Create all string constants here in the form of getters. In the case of
 *    required parameters, use the following format:
 *
 *      String hello(String name) {
 *        return Intl.message(
 *          'Hello $name',
 *          name: 'hello',
 *          args: [name],
 *          desc: 'Hello message',
 *        );
 *      }
 *
 * 2. To generates the template intl_messages.arb file in the lib/l10n folder
 *    run the following command in the terminal:
 *
 *    fvm flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/configs/localizations.configs.dart
 *
 *    After the intl_messages.arb file has been generated, use this to create
 *    the app_en.arb file and other language files i.e. app_es.arb, app_fr.arb,
 *    etc... and translate them to the desired language.
 *
 * 3. When you are done translating the app_en.arb file, run the following to
 *    link the translations to the app:
 *
 *    fvm flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n \ --no-use-deferred-loading lib/configs/localizations.configs.dart lib/l10n/intl_*.arb
 */

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String localeName = Intl.canonicalizedLocale(
      locale.countryCode == null ? locale.languageCode : locale.toString(),
    );

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String get appTitle => Intl.message(
        'BilowApp',
        name: 'appTitle',
        desc: 'Title for the BilowApp starter app',
      );

  String hello(String name) => Intl.message(
        'Hello $name',
        name: 'hello',
        args: [name],
        desc: 'Hello message',
      );

  String get getStarted => Intl.message(
        'Get Started',
        name: 'getStarted',
        desc: 'Get Started button text',
      );

  String get unknownError => Intl.message(
        'Unknown Error',
        name: 'unknownError',
        desc: 'Unknown Error message',
      );

  String get login => Intl.message(
        'Login',
        name: 'login',
        desc: 'Login button text',
      );

  String get register => Intl.message(
        'Register',
        name: 'register',
        desc: 'Register button text',
      );

  String get warning => Intl.message(
        'Warning',
        name: 'warning',
        desc: 'Warning message',
      );

  String get success => Intl.message(
        'Success',
        name: 'success',
        desc: 'Success message',
      );

  String get error => Intl.message(
        'Error',
        name: 'error',
        desc: 'Error message',
      );

  String get loginHelper => Intl.message(
        'Implement login functionality here and GoRouter '
        'will take care of the rest!',
        name: 'loginHelper',
        desc: 'Login helper text',
      );

  String get hintDob => Intl.message(
        'Date of Birth',
        name: 'hintDob',
        desc: 'Date of Birth hint text',
      );

  String get hintImage => Intl.message(
        'Image',
        name: 'hintImage',
        desc: 'Image hint text',
      );

  String get hintPhoneNumber => Intl.message(
        'Phone Number',
        name: 'hintPhoneNumber',
        desc: 'Phone Number hint text',
      );

  String get hintEmail => Intl.message(
        'Email',
        name: 'hintEmail',
        desc: 'Email hint text',
      );

  String get hintPassword => Intl.message(
        'Password',
        name: 'hintPassword',
        desc: 'Password hint text',
      );

  String get hintFirstName => Intl.message(
        'First Name',
        name: 'hintFirstName',
        desc: 'First Name hint text',
      );

  String get hintLastName => Intl.message(
        'Last Name',
        name: 'hintLastName',
        desc: 'Last Name hint text',
      );
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
