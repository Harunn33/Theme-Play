import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_codes_to_user_model.freezed.dart';
part 'shared_codes_to_user_model.g.dart';

@freezed
class SharedCodesToUserModel with _$SharedCodesToUserModel {
  const factory SharedCodesToUserModel({
    @JsonKey(includeToJson: false) final String? id,
    @JsonKey(name: "created_at") required final String createdAt,
    @JsonKey(name: "created_by") required final String createdBy,
    final List<String>? codes,
  }) = _SharedCodesToUserModel;

  factory SharedCodesToUserModel.fromJson(Map<String, Object?> json) =>
      _$SharedCodesToUserModelFromJson(json);
}
