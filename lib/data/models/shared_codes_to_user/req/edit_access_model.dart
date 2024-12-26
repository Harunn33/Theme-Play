import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_access_model.freezed.dart';
part 'edit_access_model.g.dart';

@freezed
class EditAccessModel with _$EditAccessModel {
  const factory EditAccessModel({
    @JsonKey(name: 'theme_edit_access', defaultValue: false)
    required bool themeEditAccess,
  }) = _EditAccessModel;

  factory EditAccessModel.fromJson(Map<String, Object?> json) =>
      _$EditAccessModelFromJson(json);
}
