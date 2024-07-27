import 'package:get/get.dart';

class AppTranslations extends Translations {
  final Map<String, Map<String, String>> languages;

  AppTranslations({required this.languages});
  @override
  Map<String, Map<String, String>> get keys {
    return languages;
  }
}
