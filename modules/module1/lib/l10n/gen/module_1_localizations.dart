import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'module_1_localizations_en.dart';
import 'module_1_localizations_tr.dart';

/// Callers can lookup localized strings with an instance of Module1Localizations
/// returned by `Module1Localizations.of(context)`.
///
/// Applications need to include `Module1Localizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/module_1_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Module1Localizations.localizationsDelegates,
///   supportedLocales: Module1Localizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Module1Localizations.supportedLocales
/// property.
abstract class Module1Localizations {
  Module1Localizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Module1Localizations of(BuildContext context) {
    return Localizations.of<Module1Localizations>(context, Module1Localizations)!;
  }

  static const LocalizationsDelegate<Module1Localizations> delegate = _Module1LocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr')
  ];

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Module 1!'**
  String get welcome;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'This is a sample module demonstrating how to implement modular localizations in Flutter.'**
  String get description;
}

class _Module1LocalizationsDelegate extends LocalizationsDelegate<Module1Localizations> {
  const _Module1LocalizationsDelegate();

  @override
  Future<Module1Localizations> load(Locale locale) {
    return SynchronousFuture<Module1Localizations>(lookupModule1Localizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_Module1LocalizationsDelegate old) => false;
}

Module1Localizations lookupModule1Localizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return Module1LocalizationsEn();
    case 'tr': return Module1LocalizationsTr();
  }

  throw FlutterError(
    'Module1Localizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
