import 'module_2_localizations.dart';

/// The translations for Turkish (`tr`).
class Module2LocalizationsTr extends Module2Localizations {
  Module2LocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get welcome => 'Modül 2\'ye Hoş Geldiniz!';

  @override
  String get description => 'Bu modülü istediğiniz gibi özelleştirin.';
}
