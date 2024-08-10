// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserThemeModelImpl _$$UserThemeModelImplFromJson(Map<String, dynamic> json) =>
    _$UserThemeModelImpl(
      createdBy: json['created_by'] as String,
      themeId: json['theme_id'] as String,
      name: json['name'] as String,
      style: ThemeStyleModel.fromJson(json['style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserThemeModelImplToJson(
        _$UserThemeModelImpl instance) =>
    <String, dynamic>{
      'created_by': instance.createdBy,
      'theme_id': instance.themeId,
      'name': instance.name,
      'style': instance.style,
    };
