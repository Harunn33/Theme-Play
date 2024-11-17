import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme_play/data/models/theme/theme_style/theme_style_model.dart';

part 'user_theme_model.freezed.dart';
part 'user_theme_model.g.dart';

@freezed
class UserThemeModel with _$UserThemeModel {
  const factory UserThemeModel({
    @JsonKey(name: 'shareable_code') required String shareableCode,
    @JsonKey(name: 'created_by') required String createdBy,
    @JsonKey(name: 'theme_id') required String themeId,
    required String name,
    required ThemeStyleModel style,
    @JsonKey(includeToJson: false) String? id,
  }) = _UserThemeModel;

  factory UserThemeModel.fromJson(Map<String, Object?> json) =>
      _$UserThemeModelFromJson(json);
}
