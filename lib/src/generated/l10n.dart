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

class AllSchoolInfoIntl {
  AllSchoolInfoIntl();

  static AllSchoolInfoIntl? _current;

  static AllSchoolInfoIntl get current {
    assert(_current != null,
        'No instance of AllSchoolInfoIntl was loaded. Try to initialize the AllSchoolInfoIntl delegate before accessing AllSchoolInfoIntl.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AllSchoolInfoIntl> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AllSchoolInfoIntl();
      AllSchoolInfoIntl._current = instance;

      return instance;
    });
  }

  static AllSchoolInfoIntl of(BuildContext context) {
    final instance = AllSchoolInfoIntl.maybeOf(context);
    assert(instance != null,
        'No instance of AllSchoolInfoIntl present in the widget tree. Did you add AllSchoolInfoIntl.delegate in localizationsDelegates?');
    return instance!;
  }

  static AllSchoolInfoIntl? maybeOf(BuildContext context) {
    return Localizations.of<AllSchoolInfoIntl>(context, AllSchoolInfoIntl);
  }

  /// `Школа 67`
  String get mainTitle {
    return Intl.message(
      'Школа 67',
      name: 'mainTitle',
      desc: '',
      args: [],
    );
  }

  /// `Нет объявлений`
  String get noAnnouncement {
    return Intl.message(
      'Нет объявлений',
      name: 'noAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Объявление`
  String get announcementView {
    return Intl.message(
      'Объявление',
      name: 'announcementView',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AllSchoolInfoIntl> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AllSchoolInfoIntl> load(Locale locale) => AllSchoolInfoIntl.load(locale);
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
