import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
    Locale('es')
  ];

  /// No description provided for @registerNow.
  ///
  /// In en, this message translates to:
  /// **'Register Now'**
  String get registerNow;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @forgetPass.
  ///
  /// In en, this message translates to:
  /// **'Forget Password'**
  String get forgetPass;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations'**
  String get congratulations;

  /// No description provided for @competition.
  ///
  /// In en, this message translates to:
  /// **'Competition'**
  String get competition;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMore;

  /// No description provided for @newsFeed.
  ///
  /// In en, this message translates to:
  /// **'News Feed'**
  String get newsFeed;

  /// No description provided for @onBoardingTitle.
  ///
  /// In en, this message translates to:
  /// **'More than just an app'**
  String get onBoardingTitle;

  /// No description provided for @onBoardingContent1.
  ///
  /// In en, this message translates to:
  /// **'For women who want more from life.'**
  String get onBoardingContent1;

  /// No description provided for @onBoardingContent2.
  ///
  /// In en, this message translates to:
  /// **'Find the natural way to truly balance family, career, and your own needs.'**
  String get onBoardingContent2;

  /// No description provided for @onBoardingAgreement.
  ///
  /// In en, this message translates to:
  /// **'By registering, you agree to our Terms of Use and Privacy Policy.'**
  String get onBoardingAgreement;

  /// No description provided for @signUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Create your Account'**
  String get signUpTitle;

  /// No description provided for @signUpAgreement.
  ///
  /// In en, this message translates to:
  /// **'I agree to the processing of Personal date'**
  String get signUpAgreement;

  /// No description provided for @signUpAlreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get signUpAlreadyHaveAccount;

  /// No description provided for @signInTitle.
  ///
  /// In en, this message translates to:
  /// **'Login to your Account'**
  String get signInTitle;

  /// No description provided for @signInRemmeber.
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get signInRemmeber;

  /// No description provided for @forgetPassTitle.
  ///
  /// In en, this message translates to:
  /// **'Select which contact details should we use to reset your password.'**
  String get forgetPassTitle;

  /// No description provided for @otpMessage.
  ///
  /// In en, this message translates to:
  /// **'Code has been send to'**
  String get otpMessage;

  /// No description provided for @newPassTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Your New password'**
  String get newPassTitle;

  /// No description provided for @congratsContent.
  ///
  /// In en, this message translates to:
  /// **'Your account is ready to use. You will be redirected to the Home page in a few seconds..'**
  String get congratsContent;

  /// No description provided for @homeImageConent1.
  ///
  /// In en, this message translates to:
  /// **'Inspire the community with your DIY project.'**
  String get homeImageConent1;

  /// No description provided for @homeImageConent2.
  ///
  /// In en, this message translates to:
  /// **'Advertising Space, Slider'**
  String get homeImageConent2;

  /// No description provided for @homeCallNowIntro.
  ///
  /// In en, this message translates to:
  /// **'Aroma Experten-Hotline'**
  String get homeCallNowIntro;

  /// No description provided for @homeCallNowTitle.
  ///
  /// In en, this message translates to:
  /// **'Great to have you here, Tanja!'**
  String get homeCallNowTitle;

  /// No description provided for @homeCallNowContent.
  ///
  /// In en, this message translates to:
  /// **'If you need help or personal advice, just click on my photo.'**
  String get homeCallNowContent;

  /// No description provided for @hotLineTitle.
  ///
  /// In en, this message translates to:
  /// **'Aroma Expert Hotline'**
  String get hotLineTitle;

  /// No description provided for @hotLineConent1.
  ///
  /// In en, this message translates to:
  /// **'Would you like a personalized consultation with a trained aroma expert?'**
  String get hotLineConent1;

  /// No description provided for @hotLineConent2.
  ///
  /// In en, this message translates to:
  /// **'We are happy to assist you on our hotline. Per minute: xx Call 0800xxxx'**
  String get hotLineConent2;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
