import 'module_1_localizations.dart';

/// The translations for English (`en`).
class Module1LocalizationsEn extends Module1Localizations {
  Module1LocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome to Module 1!';

  @override
  String get description => 'This is a sample module demonstrating how to implement modular localizations in Flutter.';
}
