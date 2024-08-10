final class AppStrings {
  const AppStrings._();

  static const AppStrings instance = AppStrings._();

  // General
  String get appName => "Theme Play";
  String get appDescription => "appDescription";
  String get appVersion => "1.0.0";
  String get english => "English";
  String get turkish => "Türkçe";

  // Account page
  String get editProfile => "editProfile";
  String get general => "general";
  String get changeLanguage => "changeLanguage";
  String get signOut => "signOut";

  // Edit profile page
  String get fullName => "fullName";
  String get email => "email";
  String get save => "save";

  // Snacbar types
  String get error => "error";
  String get success => "success";
  String get info => "info";

  // Nav bar pages
  String get home => "home";
  String get account => "account";

  // Home page
  String get allCreatedThemes => "allCreatedThemes";
  String get searchYourThemes => "searchYourThemes";

  // Creator page
  String get designYourPage => "designYourPage";
  String get selectCategory => "selectCategory";
  String get enterYourPageName => "enterYourPageName";
  String get create => "create";

  // Snackbar messages
  String get profileUpdated => "profileUpdated";
  String get themeCreated => "themeCreated";
}
