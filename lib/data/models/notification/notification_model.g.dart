// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      createdBy: json['created_by'] as String,
      title: Map<String, String>.from(json['title'] as Map),
      content: Map<String, String>.from(json['content'] as Map),
      type: json['type'] as String,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'created_by': instance.createdBy,
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
    };
