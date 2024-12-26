import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme_play/data/models/notification/index.dart';
import 'package:theme_play/data/models/theme/theme_style/theme_style_model.dart';

part 'theme_model.freezed.dart';
part 'theme_model.g.dart';

@freezed
class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    required String id,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required WordTranslation type,
    required ThemeStyleModel style,
  }) = _ThemeModel;

  factory ThemeModel.fromJson(Map<String, Object?> json) =>
      _$ThemeModelFromJson(json);
}
