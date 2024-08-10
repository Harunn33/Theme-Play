// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeModelImpl _$$ThemeModelImplFromJson(Map<String, dynamic> json) =>
    _$ThemeModelImpl(
      id: json['id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      type: Map<String, String>.from(json['type'] as Map),
      style: ThemeStyleModel.fromJson(json['style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ThemeModelImplToJson(_$ThemeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'type': instance.type,
      'style': instance.style,
    };
