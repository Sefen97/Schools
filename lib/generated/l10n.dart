// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `اب`
  String get isFather {
    return Intl.message(
      'اب',
      name: 'isFather',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Interactive School Counselling`
  String get interactiveSchoolCounselling {
    return Intl.message(
      'Interactive School Counselling',
      name: 'interactiveSchoolCounselling',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Phone Number`
  String get enterYourPhoneNumber {
    return Intl.message(
      'Enter your Phone Number',
      name: 'enterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Send OTP`
  String get sendOTP {
    return Intl.message(
      'Send OTP',
      name: 'sendOTP',
      desc: '',
      args: [],
    );
  }

  /// `Change Mobile Number`
  String get changeMobileNumber {
    return Intl.message(
      'Change Mobile Number',
      name: 'changeMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// ` Next`
  String get next {
    return Intl.message(
      ' Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// ` I have read and accept the`
  String get ihaveReadAndAcceptThe {
    return Intl.message(
      ' I have read and accept the',
      name: 'ihaveReadAndAcceptThe',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Term of Use`
  String get termOfUse {
    return Intl.message(
      'Term of Use',
      name: 'termOfUse',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Didn't Receive Verification code ?`
  String get didntReceiveVerificationCode {
    return Intl.message(
      'Didn\'t Receive Verification code ?',
      name: 'didntReceiveVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Send it again`
  String get sendItAgain {
    return Intl.message(
      'Send it again',
      name: 'sendItAgain',
      desc: '',
      args: [],
    );
  }

  /// `Verify your Number`
  String get verifyYourNumber {
    return Intl.message(
      'Verify your Number',
      name: 'verifyYourNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please type verification code sent to your\nphone`
  String get pleaseTypeVerificationCodeSentToYourPhone {
    return Intl.message(
      'Please type verification code sent to your\nphone',
      name: 'pleaseTypeVerificationCodeSentToYourPhone',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
