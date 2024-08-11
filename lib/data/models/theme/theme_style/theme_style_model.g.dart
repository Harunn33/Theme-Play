// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeStyleModelImpl _$$ThemeStyleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeStyleModelImpl(
      title: BaseLocalizedTextModel.fromJson(
          json['title'] as Map<String, dynamic>),
      subTitle: BaseLocalizedTextModel.fromJson(
          json['sub_title'] as Map<String, dynamic>),
      mainMessage: BaseLocalizedTextModel.fromJson(
          json['main_message'] as Map<String, dynamic>),
      bgColor: json['bg_color'] as String,
      titleStyle:
          TitleStyleModel.fromJson(json['title_style'] as Map<String, dynamic>),
      textStyle:
          TextStyleModel.fromJson(json['text_style'] as Map<String, dynamic>),
      buttonStyle: ButtonStyleModel.fromJson(
          json['button_style'] as Map<String, dynamic>),
      sliderStyle: SliderStyleModel.fromJson(
          json['slider_style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ThemeStyleModelImplToJson(
        _$ThemeStyleModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.subTitle,
      'main_message': instance.mainMessage,
      'bg_color': instance.bgColor,
      'title_style': instance.titleStyle,
      'text_style': instance.textStyle,
      'button_style': instance.buttonStyle,
      'slider_style': instance.sliderStyle,
    };

_$BaseLocalizedTextModelImpl _$$BaseLocalizedTextModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseLocalizedTextModelImpl(
      en: json['en'] as String,
      tr: json['tr'] as String,
    );

Map<String, dynamic> _$$BaseLocalizedTextModelImplToJson(
        _$BaseLocalizedTextModelImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'tr': instance.tr,
    };

_$TitleStyleModelImpl _$$TitleStyleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TitleStyleModelImpl(
      size: (json['size'] as num).toDouble(),
      color: json['color'] as String,
      typewriterAnimationDuration:
          (json['typewriter_animation_duration'] as num).toDouble(),
    );

Map<String, dynamic> _$$TitleStyleModelImplToJson(
        _$TitleStyleModelImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'color': instance.color,
      'typewriter_animation_duration': instance.typewriterAnimationDuration,
    };

_$TextStyleModelImpl _$$TextStyleModelImplFromJson(Map<String, dynamic> json) =>
    _$TextStyleModelImpl(
      size: (json['size'] as num).toDouble(),
      color: json['color'] as String,
      typewriterAnimationDuration:
          (json['typewriter_animation_duration'] as num).toDouble(),
    );

Map<String, dynamic> _$$TextStyleModelImplToJson(
        _$TextStyleModelImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'color': instance.color,
      'typewriter_animation_duration': instance.typewriterAnimationDuration,
    };

_$ButtonStyleModelImpl _$$ButtonStyleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ButtonStyleModelImpl(
      radius: (json['radius'] as num).toDouble(),
      color: json['color'] as String,
    );

Map<String, dynamic> _$$ButtonStyleModelImplToJson(
        _$ButtonStyleModelImpl instance) =>
    <String, dynamic>{
      'radius': instance.radius,
      'color': instance.color,
    };

_$SliderStyleModelImpl _$$SliderStyleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SliderStyleModelImpl(
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      radius: (json['radius'] as num).toDouble(),
      autoPlay: json['auto_play'] as bool,
      scrollDirection: json['scroll_direction'] as String,
      autoPlayInterval: (json['auto_play_interval'] as num).toInt(),
    );

Map<String, dynamic> _$$SliderStyleModelImplToJson(
        _$SliderStyleModelImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
      'radius': instance.radius,
      'auto_play': instance.autoPlay,
      'scroll_direction': instance.scrollDirection,
      'auto_play_interval': instance.autoPlayInterval,
    };
