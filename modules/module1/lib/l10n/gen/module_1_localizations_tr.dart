import 'module_1_localizations.dart';

/// The translations for Turkish (`tr`).
class Module1LocalizationsTr extends Module1Localizations {
  Module1LocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get welcome => 'Modül 1\'e Hoş Geldiniz!';

  @override
  String get description => 'Bu modül Flutter\'da modüler çevirileri nasıl uygulayacağınızı gösteren bir örnektir.';
}
