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
      sharingUser: json['sharing_user'] as String,
      sharedUser: json['shared_user'] as String,
      themeShareCode: json['theme_share_code'] as String,
      themeEditAccess: json['theme_edit_access'] as bool,
    );

Map<String, dynamic> _$$SharedCodesToUserModelImplToJson(
        _$SharedCodesToUserModelImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'sharing_user': instance.sharingUser,
      'shared_user': instance.sharedUser,
      'theme_share_code': instance.themeShareCode,
      'theme_edit_access': instance.themeEditAccess,
    };
