final class AppStrings {
  const AppStrings._();

  static const AppStrings instance = AppStrings._();

  // General
  String get appName => "Theme Play";
  String get appDescription => "appDescription";
  String get appVersion => "1.0.0";
  String get english => "English";
  String get turkish => "Türkçe";
  String get noResultFound => "noResultFound";
  String get yes => "yes";
  String get no => "no";
  String get copyCode => "copyCode";
  String get copied => "copied";
  String get fieldIsRequired => "fieldIsRequired";

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
  String get sharedThemesWithMe => "sharedThemesWithMe";
  String get searchYourThemes => "searchYourThemes";
  String get my => "my";
  String get sharedToMe => "sharedToMe";
  String get editTheme => "editTheme";
  String get deleteTheme => "deleteTheme";
  String get deleteThemeDialogQuestion => "deleteThemeDialogQuestion";
  String get filters => "filters";
  String get removeFilters => "removeFilters";
  String get filterByCategory => "filterByCategory";
  String get birthday => "birthday";
  String get anniversary => "anniversary";
  String get lover => "lover";
  String get filterThemes => "filterThemes";
  String get enterThemeCode => "enterThemeCode";
  String get codeMustBeAtLeast11 => "codeMustBeAtLeast11";

  // Home page error messages
  String get youCantShareYourOwnTheme => "youCantShareYourOwnTheme";

  // Creator page
  String get designYourPage => "designYourPage";
  String get selectCategory => "selectCategory";
  String get enterYourPageName => "enterYourPageName";
  String get create => "create";

  // Edit theme page
  String get themeName => "themeName";
  String get title => "title";
  String get subtitle => "subtitle";
  String get mainMessage => "mainMessage";

  // Snackbar messages
  String get profileUpdated => "profileUpdated";
  String get themeCreated => "themeCreated";
}
