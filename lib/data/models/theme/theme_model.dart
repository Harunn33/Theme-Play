import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_model.freezed.dart';
part 'theme_model.g.dart';

@freezed
class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    required final String id,
    @JsonKey(name: "created_at") required final String createdAt,
    @JsonKey(name: "updated_at") required final String updatedAt,
    required final Map<String, String> type,
  }) = _ThemeModel;

  factory ThemeModel.fromJson(Map<String, Object?> json) =>
      _$ThemeModelFromJson(json);
}
