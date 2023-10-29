// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:modular_localization/app/l10n/gen/app_localizations.dart';
import 'package:module1/l10n/gen/module_1_localizations.dart';
import 'package:module2/l10n/gen/module_2_localizations.dart';

final class AppL10n {
  AppL10n._();

  static const enUS = Locale('en', 'US');
  static const trTR = Locale('tr', 'TR');

  static const List<Locale> supportedLocales = [enUS, trTR];

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    ...AppLocalizations.localizationsDelegates,
    ...Module1Localizations.localizationsDelegates,
    ...Module2Localizations.localizationsDelegates,
  ];
}
