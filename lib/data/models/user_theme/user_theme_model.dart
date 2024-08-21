import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme_play/data/models/theme/theme_style/theme_style_model.dart';

part 'user_theme_model.freezed.dart';
part 'user_theme_model.g.dart';

@freezed
class UserThemeModel with _$UserThemeModel {
  const factory UserThemeModel({
    @JsonKey(includeToJson: false) final String? id,
    @JsonKey(name: "shareable_code") required final String shareableCode,
    @JsonKey(name: "created_by") required final String createdBy,
    @JsonKey(name: "theme_id") required final String themeId,
    required final String name,
    required final ThemeStyleModel style,
  }) = _UserThemeModel;

  factory UserThemeModel.fromJson(Map<String, Object?> json) =>
      _$UserThemeModelFromJson(json);
}
