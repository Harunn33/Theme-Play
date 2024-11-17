import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_style_model.freezed.dart';
part 'theme_style_model.g.dart';

@freezed
class ThemeStyleModel with _$ThemeStyleModel {
  const factory ThemeStyleModel({
    required String title,
    @JsonKey(name: 'sub_title') required String subtitle,
    @JsonKey(name: 'main_message') required String mainMessage,
    @JsonKey(name: 'bg_color') required String bgColor,
    @JsonKey(name: 'title_style') required TitleStyleModel titleStyle,
    @JsonKey(name: 'text_style') required TextStyleModel textStyle,
    @JsonKey(name: 'button_style') required ButtonStyleModel buttonStyle,
    @JsonKey(name: 'slider_style') required SliderStyleModel sliderStyle,
  }) = _ThemeStyleModel;

  factory ThemeStyleModel.fromJson(Map<String, Object?> json) =>
      _$ThemeStyleModelFromJson(json);
}

@freezed
class TitleStyleModel with _$TitleStyleModel {
  const factory TitleStyleModel({
    required double size,
    required String color,
    @JsonKey(name: 'typewriter_animation_duration')
    required double typewriterAnimationDuration,
  }) = _TitleStyleModel;

  factory TitleStyleModel.fromJson(Map<String, Object?> json) =>
      _$TitleStyleModelFromJson(json);
}

@freezed
class TextStyleModel with _$TextStyleModel {
  const factory TextStyleModel({
    required double size,
    required String color,
    @JsonKey(name: 'typewriter_animation_duration')
    required double typewriterAnimationDuration,
  }) = _TextStyleModel;

  factory TextStyleModel.fromJson(Map<String, Object?> json) =>
      _$TextStyleModelFromJson(json);
}

@freezed
class ButtonStyleModel with _$ButtonStyleModel {
  const factory ButtonStyleModel({
    required double radius,
    required String color,
  }) = _ButtonStyleModel;

  factory ButtonStyleModel.fromJson(Map<String, Object?> json) =>
      _$ButtonStyleModelFromJson(json);
}

@freezed
class SliderStyleModel with _$SliderStyleModel {
  const factory SliderStyleModel({
    required List<String> images,
    required double radius,
    @JsonKey(name: 'auto_play') required bool autoPlay,
    @JsonKey(name: 'scroll_direction') required String scrollDirection,
    @JsonKey(name: 'auto_play_interval') required int autoPlayInterval,
  }) = _SliderStyleModel;

  factory SliderStyleModel.fromJson(Map<String, Object?> json) =>
      _$SliderStyleModelFromJson(json);
}
