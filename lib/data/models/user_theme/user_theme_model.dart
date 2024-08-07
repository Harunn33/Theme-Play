import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_theme_model.freezed.dart';
part 'user_theme_model.g.dart';

@freezed
class UserThemeModel with _$UserThemeModel {
  const factory UserThemeModel({
    @JsonKey(name: "created_by") required final String createdBy,
    @JsonKey(name: "theme_id") required final String themeId,
    required final String name,
  }) = _UserThemeModel;

  factory UserThemeModel.fromJson(Map<String, Object?> json) =>
      _$UserThemeModelFromJson(json);
}
