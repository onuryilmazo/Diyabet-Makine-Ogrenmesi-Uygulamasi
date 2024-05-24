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

  /// `Welcome`
  String get title {
    return Intl.message(
      'Welcome',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Discover the key to a healthy life. Our app will guide you through diabetes management and healthy living. Continue to start!`
  String get onboardingDescription1 {
    return Intl.message(
      'Discover the key to a healthy life. Our app will guide you through diabetes management and healthy living. Continue to start!',
      name: 'onboardingDescription1',
      desc: '',
      args: [],
    );
  }

  /// `What is Diabetes?`
  String get diabetesTitle {
    return Intl.message(
      'What is Diabetes?',
      name: 'diabetesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Diabetes is a condition where blood sugar levels remain consistently high. There are two main types: Type 1 and Type 2. In Type 1 diabetes, the body cannot produce enough insulin. In Type 2 diabetes, the body cannot effectively use insulin. Both types can be managed with a healthy lifestyle and regular medical care.`
  String get diabetesDescription {
    return Intl.message(
      'Diabetes is a condition where blood sugar levels remain consistently high. There are two main types: Type 1 and Type 2. In Type 1 diabetes, the body cannot produce enough insulin. In Type 2 diabetes, the body cannot effectively use insulin. Both types can be managed with a healthy lifestyle and regular medical care.',
      name: 'diabetesDescription',
      desc: '',
      args: [],
    );
  }

  /// `How It Works`
  String get howItWorksTitle {
    return Intl.message(
      'How It Works',
      name: 'howItWorksTitle',
      desc: '',
      args: [],
    );
  }

  /// `Fill in the required information and let our machine learning model predict diabetes for you based on the results.`
  String get howItWorksDescription {
    return Intl.message(
      'Fill in the required information and let our machine learning model predict diabetes for you based on the results.',
      name: 'howItWorksDescription',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Enter your weight (kg)`
  String get enterWeight {
    return Intl.message(
      'Enter your weight (kg)',
      name: 'enterWeight',
      desc: '',
      args: [],
    );
  }

  /// `Enter your height (m)`
  String get enterHeight {
    return Intl.message(
      'Enter your height (m)',
      name: 'enterHeight',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get calculate {
    return Intl.message(
      'Calculate',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `Your Body Mass Index`
  String get bmiResult {
    return Intl.message(
      'Your Body Mass Index',
      name: 'bmiResult',
      desc: '',
      args: [],
    );
  }

  /// `Next Page`
  String get nextPage {
    return Intl.message(
      'Next Page',
      name: 'nextPage',
      desc: '',
      args: [],
    );
  }

  /// `Number of Pregnancies`
  String get pregnancyCount {
    return Intl.message(
      'Number of Pregnancies',
      name: 'pregnancyCount',
      desc: '',
      args: [],
    );
  }

  /// `Glucose Value`
  String get glucoseValue {
    return Intl.message(
      'Glucose Value',
      name: 'glucoseValue',
      desc: '',
      args: [],
    );
  }

  /// `Blood Pressure Value`
  String get bloodPressureValue {
    return Intl.message(
      'Blood Pressure Value',
      name: 'bloodPressureValue',
      desc: '',
      args: [],
    );
  }

  /// `Skin Thickness Value`
  String get skinThicknessValue {
    return Intl.message(
      'Skin Thickness Value',
      name: 'skinThicknessValue',
      desc: '',
      args: [],
    );
  }

  /// `Insulin Value`
  String get insulinValue {
    return Intl.message(
      'Insulin Value',
      name: 'insulinValue',
      desc: '',
      args: [],
    );
  }

  /// `Body Mass Index Value`
  String get bmiValue {
    return Intl.message(
      'Body Mass Index Value',
      name: 'bmiValue',
      desc: '',
      args: [],
    );
  }

  /// `How many generations have diabetes?`
  String get diabetesPedigree {
    return Intl.message(
      'How many generations have diabetes?',
      name: 'diabetesPedigree',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get calculateButton {
    return Intl.message(
      'Calculate',
      name: 'calculateButton',
      desc: '',
      args: [],
    );
  }

  /// `Test Result`
  String get testResult {
    return Intl.message(
      'Test Result',
      name: 'testResult',
      desc: '',
      args: [],
    );
  }

  /// `Disease Status`
  String get diseaseStatus {
    return Intl.message(
      'Disease Status',
      name: 'diseaseStatus',
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
      Locale.fromSubtags(languageCode: 'tr'),
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
