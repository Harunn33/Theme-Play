// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNotificationModelImpl _$$CreateNotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNotificationModelImpl(
      appId: json['app_id'] as String,
      headings:
          WordTranslation.fromJson(json['headings'] as Map<String, dynamic>),
      contents:
          WordTranslation.fromJson(json['contents'] as Map<String, dynamic>),
      data: AdditionalDataModel.fromJson(json['data'] as Map<String, dynamic>),
      filters: (json['filters'] as List<dynamic>)
          .map((e) => NotifFiltersParametersItemModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      targetChannels: json['target_channels'] as String?,
    );

Map<String, dynamic> _$$CreateNotificationModelImplToJson(
        _$CreateNotificationModelImpl instance) =>
    <String, dynamic>{
      'app_id': instance.appId,
      'headings': instance.headings,
      'contents': instance.contents,
      'data': instance.data,
      'filters': instance.filters,
      'target_channels': instance.targetChannels,
    };

_$NotifFiltersParametersItemModelImpl
    _$$NotifFiltersParametersItemModelImplFromJson(Map<String, dynamic> json) =>
        _$NotifFiltersParametersItemModelImpl(
          field: json['field'] as String,
          key: json['key'] as String,
          relation: json['relation'] as String,
          value: json['value'] as String,
        );

Map<String, dynamic> _$$NotifFiltersParametersItemModelImplToJson(
        _$NotifFiltersParametersItemModelImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'key': instance.key,
      'relation': instance.relation,
      'value': instance.value,
    };

_$AdditionalDataModelImpl _$$AdditionalDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalDataModelImpl(
      themeShared: json['theme_shared'] as bool? ?? false,
    );

Map<String, dynamic> _$$AdditionalDataModelImplToJson(
        _$AdditionalDataModelImpl instance) =>
    <String, dynamic>{
      'theme_shared': instance.themeShared,
    };
