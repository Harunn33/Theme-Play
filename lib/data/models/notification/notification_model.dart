import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    @JsonKey(name: 'created_by') required String createdBy,
    required WordTranslation title,
    required WordTranslation content,
    required String type,
    @JsonKey(includeToJson: false, name: 'created_at') String? createdAt,
    @JsonKey(includeToJson: false) String? id,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, Object?> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class WordTranslation with _$WordTranslation {
  const factory WordTranslation({
    required String en,
    required String tr,
  }) = _WordTranslation;

  factory WordTranslation.fromJson(Map<String, Object?> json) =>
      _$WordTranslationFromJson(json);
}
