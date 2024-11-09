import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_codes_to_user_model.freezed.dart';
part 'shared_codes_to_user_model.g.dart';

@freezed
class SharedCodesToUserModel with _$SharedCodesToUserModel {
  const factory SharedCodesToUserModel({
    @JsonKey(includeToJson: false) final String? id,
    @JsonKey(name: "created_at") required final String createdAt,
    @JsonKey(name: "sharing_user") required final String sharingUser,
    @JsonKey(name: "shared_user") required final String sharedUser,
    @JsonKey(name: "theme_share_code") required final String themeShareCode,
    @JsonKey(name: "theme_edit_access") required final bool themeEditAccess,
  }) = _SharedCodesToUserModel;

  factory SharedCodesToUserModel.fromJson(Map<String, Object?> json) =>
      _$SharedCodesToUserModelFromJson(json);
}
