enum TableName {
  themes("themes"),
  userThemes("user_themes"),
  sharedCodesToUser("shared_codes_to_user");

  final String value;
  const TableName(this.value);
}
