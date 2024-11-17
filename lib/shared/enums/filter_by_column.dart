enum FilterByColumn {
  name('name'),
  id('id'),
  themeId('theme_id'),
  createdBy('created_by'),
  shareableCode('shareable_code'),
  sharedUser('shared_user'),
  sharingUser('sharing_user'),
  themeShareCode('theme_share_code'),
  createdAt('created_at');

  const FilterByColumn(this.value);
  final String value;
}
