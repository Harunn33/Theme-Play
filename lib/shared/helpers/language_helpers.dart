import 'dart:io';

import 'package:theme_play/data/local/local_storage/local_storage_service.dart';
import 'package:theme_play/shared/constants/langs.dart';
import 'package:theme_play/shared/enums/local_storage_keys.dart';

final class LanguageHelpers {
  const LanguageHelpers._();

  static const LanguageHelpers instance = LanguageHelpers._();

  static final LocalStorageService _localStorageService =
      LocalStorageService.instance;

  static String get defaultLanguageCode => _getDefaultLanguageCode();
  static String get defaultCountryCode => _getDefaultCountryCode();

  static String _getDefaultLanguageCode() {
    final deviceLanguageCode = Platform.localeName.split('_').first;
    final supportedLanguages =
        AppLangs.languages.map((e) => e.languageCode).toList();

    if (supportedLanguages.contains(deviceLanguageCode)) {
      return deviceLanguageCode;
    }
    return 'tr';
  }

  static String _getDefaultCountryCode() {
    final deviceCountryCode = Platform.localeName.split('_').last;
    final supportedCountries =
        AppLangs.languages.map((e) => e.countryCode).toList();

    if (supportedCountries.contains(deviceCountryCode)) {
      return deviceCountryCode;
    }
    return 'TR';
  }

  static String _getCurrentLanguageCode() {
    return _localStorageService.retrieveData(
          LocalStorageKeys.languageCode.name,
        ) ??
        defaultLanguageCode;
  }

  static String _getCurrentCountryCode() {
    return _localStorageService.retrieveData(
          LocalStorageKeys.countryCode.name,
        ) ??
        defaultCountryCode;
  }

  String get currentLanguageCode => _getCurrentLanguageCode();
  String get currentCountryCode => _getCurrentCountryCode();

  String convertedCurrentLang({
    required Map<String, dynamic> texts,
  }) {
    final currentLanguage = _getCurrentLanguageCode();
    return texts[currentLanguage].toString();
  }
}
