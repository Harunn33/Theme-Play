import 'package:flutter/material.dart';
import 'package:theme_play/data/models/language/language_model.dart';
import 'package:theme_play/shared/constants/strings.dart';

final class AppLangs {
  AppLangs._();

  static const localeEn = Locale("en", "US");

  static const languagePath = "assets/langs/";

  static List<LanguageModel> languages = [
    LanguageModel(
      languageName: AppStrings.instance.english,
      languageCode: "en",
      countryCode: "US",
    ),
    LanguageModel(
      languageName: AppStrings.instance.turkish,
      languageCode: "tr",
      countryCode: "TR",
    ),
  ];
}