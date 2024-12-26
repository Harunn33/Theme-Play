import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_fill_parameter_model.freezed.dart';
part 'string_fill_parameter_model.g.dart';

@freezed
class StringFillParameterModel with _$StringFillParameterModel {
  const factory StringFillParameterModel({
    String? fullName,
    String? themeName,
  }) = _StringFillParameterModel;

  factory StringFillParameterModel.fromJson(Map<String, Object?> json) =>
      _$StringFillParameterModelFromJson(json);
}
