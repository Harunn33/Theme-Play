// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_codes_to_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SharedCodesToUserModelImpl _$$SharedCodesToUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SharedCodesToUserModelImpl(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String,
      createdBy: json['created_by'] as String,
      codes:
          (json['codes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SharedCodesToUserModelImplToJson(
        _$SharedCodesToUserModelImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'created_by': instance.createdBy,
      'codes': instance.codes,
    };
