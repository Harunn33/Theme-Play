enum TableName {
  themes('themes'),
  userThemes('user_themes'),
  sharedCodesToUser('shared_codes_to_user'),
  notifications('notifications');

  const TableName(this.value);
  final String value;
}
