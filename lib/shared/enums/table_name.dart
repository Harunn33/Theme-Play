enum TableName {
  themes('themes'),
  userThemes('user_themes'),
  sharedCodesToUser('shared_codes_to_user');

  const TableName(this.value);
  final String value;
}
