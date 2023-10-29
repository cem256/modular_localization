import 'module_2_localizations.dart';

/// The translations for English (`en`).
class Module2LocalizationsEn extends Module2Localizations {
  Module2LocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome to Module 2!';

  @override
  String get description => 'Feel free to customize this module as you wish';
}
