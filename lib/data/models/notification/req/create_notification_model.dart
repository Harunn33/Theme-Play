import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme_play/data/models/notification/index.dart';

part 'create_notification_model.freezed.dart';
part 'create_notification_model.g.dart';

@freezed
class CreateNotificationModel with _$CreateNotificationModel {
  const factory CreateNotificationModel({
    @JsonKey(name: 'app_id') required String appId,
    required WordTranslation headings,
    required WordTranslation contents,
    required AdditionalDataModel data,
    required List<NotifFiltersParametersItemModel> filters,
    @JsonKey(name: 'target_channels') String? targetChannels,
  }) = _CreateNotificationModel;

  factory CreateNotificationModel.fromJson(Map<String, Object?> json) =>
      _$CreateNotificationModelFromJson(json);
}

@freezed
class NotifFiltersParametersItemModel with _$NotifFiltersParametersItemModel {
  const factory NotifFiltersParametersItemModel({
    required String field,
    required String key,
    required String relation,
    required String value,
  }) = _NotifFiltersParametersItemModel;

  factory NotifFiltersParametersItemModel.fromJson(Map<String, Object?> json) =>
      _$NotifFiltersParametersItemModelFromJson(json);
}

@freezed
class AdditionalDataModel with _$AdditionalDataModel {
  const factory AdditionalDataModel({
    @JsonKey(name: 'theme_shared', defaultValue: false) bool? themeShared,
    @JsonKey(name: 'theme_edit_access', defaultValue: false)
    bool? themeEditAccess,
  }) = _AdditionalDataModel;

  factory AdditionalDataModel.fromJson(Map<String, Object?> json) =>
      _$AdditionalDataModelFromJson(json);
}
