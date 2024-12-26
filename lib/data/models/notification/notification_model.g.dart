// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      createdBy: json['created_by'] as String,
      title: WordTranslation.fromJson(json['title'] as Map<String, dynamic>),
      content:
          WordTranslation.fromJson(json['content'] as Map<String, dynamic>),
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

_$WordTranslationImpl _$$WordTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$WordTranslationImpl(
      en: json['en'] as String,
      tr: json['tr'] as String,
    );

Map<String, dynamic> _$$WordTranslationImplToJson(
        _$WordTranslationImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'tr': instance.tr,
    };
