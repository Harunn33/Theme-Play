import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_codes_to_user_model.freezed.dart';
part 'shared_codes_to_user_model.g.dart';

@freezed
class SharedCodesToUserModel with _$SharedCodesToUserModel {
  const factory SharedCodesToUserModel({
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'sharing_user') required String sharingUser,
    @JsonKey(name: 'shared_user') required String sharedUser,
    @JsonKey(name: 'theme_share_code') required String themeShareCode,
    @JsonKey(name: 'theme_edit_access') required bool themeEditAccess,
    @JsonKey(includeToJson: false) String? id,
  }) = _SharedCodesToUserModel;

  factory SharedCodesToUserModel.fromJson(Map<String, Object?> json) =>
      _$SharedCodesToUserModelFromJson(json);
}
