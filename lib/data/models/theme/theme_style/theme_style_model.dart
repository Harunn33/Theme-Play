import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_style_model.freezed.dart';
part 'theme_style_model.g.dart';

@freezed
class ThemeStyleModel with _$ThemeStyleModel {
  const factory ThemeStyleModel({
    required final BaseLocalizedTextModel title,
    @JsonKey(name: "sub_title") required final BaseLocalizedTextModel subTitle,
    @JsonKey(name: "main_message")
    required final BaseLocalizedTextModel mainMessage,
    @JsonKey(name: "bg_color") required final String bgColor,
    @JsonKey(name: "title_style") required final TitleStyleModel titleStyle,
    @JsonKey(name: "text_style") required final TextStyleModel textStyle,
    @JsonKey(name: "button_style") required final ButtonStyleModel buttonStyle,
    @JsonKey(name: "slider_style") required final SliderStyleModel sliderStyle,
  }) = _ThemeStyleModel;

  factory ThemeStyleModel.fromJson(Map<String, Object?> json) =>
      _$ThemeStyleModelFromJson(json);
}

@freezed
class BaseLocalizedTextModel with _$BaseLocalizedTextModel {
  const factory BaseLocalizedTextModel({
    required final String en,
    required final String tr,
  }) = _BaseLocalizedTextModel;

  factory BaseLocalizedTextModel.fromJson(Map<String, Object?> json) =>
      _$BaseLocalizedTextModelFromJson(json);
}

@freezed
class TitleStyleModel with _$TitleStyleModel {
  const factory TitleStyleModel({
    required final double size,
    required final String color,
    @JsonKey(name: "typewriter_animation_duration")
    required final double typewriterAnimationDuration,
  }) = _TitleStyleModel;

  factory TitleStyleModel.fromJson(Map<String, Object?> json) =>
      _$TitleStyleModelFromJson(json);
}

@freezed
class TextStyleModel with _$TextStyleModel {
  const factory TextStyleModel({
    required final double size,
    required final String color,
    @JsonKey(name: "typewriter_animation_duration")
    required final double typewriterAnimationDuration,
  }) = _TextStyleModel;

  factory TextStyleModel.fromJson(Map<String, Object?> json) =>
      _$TextStyleModelFromJson(json);
}

@freezed
class ButtonStyleModel with _$ButtonStyleModel {
  const factory ButtonStyleModel({
    required final double radius,
    required final String color,
  }) = _ButtonStyleModel;

  factory ButtonStyleModel.fromJson(Map<String, Object?> json) =>
      _$ButtonStyleModelFromJson(json);
}

@freezed
class SliderStyleModel with _$SliderStyleModel {
  const factory SliderStyleModel({
    required final List<String> images,
    required final double radius,
    @JsonKey(name: "auto_play") required final bool autoPlay,
    @JsonKey(name: "scroll_direction") required final String scrollDirection,
    @JsonKey(name: "auto_play_interval") required final int autoPlayInterval,
  }) = _SliderStyleModel;

  factory SliderStyleModel.fromJson(Map<String, Object?> json) =>
      _$SliderStyleModelFromJson(json);
}
