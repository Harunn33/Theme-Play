import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:theme_play/data/models/notification/index.dart';
import 'package:theme_play/data/models/notification/notification_model.dart';
import 'package:theme_play/data/models/notification/req/create_notification_model.dart';
import 'package:theme_play/data/models/string_fill_parameter/string_fill_parameter_model.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/services/dio/dio_service.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/modules/notification_screen/enum/notification_type.dart';
import 'package:theme_play/shared/constants/strings.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/string_ext.dart';

part 'notifications_repository_impl.dart';

final class NotificationsRepository implements INotificationsRepository {
  NotificationsRepository._();

  static NotificationsRepository instance = NotificationsRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  @override
  Future<List<NotificationModel>> getNotifications() async {
    final response = await _supabaseService.fetchData(
      tableName: TableName.notifications,
    );
    return response.map(NotificationModel.fromJson).toList();
  }

  Future<void> _createNotification({
    required NotificationModel notification,
  }) async {
    await _supabaseService.insertData(
      tableName: TableName.notifications,
      data: notification.toJson(),
    );
  }

  @override
  Future<void> sendNotificationByUserId({
    required String userId,
    required String themeName,
  }) async {
    final dioService = DioService.instance;
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return;
    final fullName = user.userMetadata?['full_name'].toString();
    final notification = NotificationModel(
      title: WordTranslation(
        en: AppStrings.instance.themeSharedNotifTitleEn,
        tr: AppStrings.instance.themeSharedNotifTitleTr,
      ),
      content: WordTranslation(
        en: AppStrings.instance.sharedThemeWithYouNotifSubtitleEn
            .fillPlaceholders(
          model: StringFillParameterModel(
            fullName: fullName,
            themeName: themeName,
          ),
        ),
        tr: AppStrings.instance.sharedThemeWithYouNotifSubtitleTr
            .fillPlaceholders(
          model: StringFillParameterModel(
            fullName: fullName,
            themeName: themeName,
          ),
        ),
      ),
      createdBy: userId,
      type: NotificationType.themeShared.value,
    );
    final createNotifModel = CreateNotificationModel(
      data: const AdditionalDataModel(
        themeShared: true,
      ),
      appId: dotenv.env['ONESIGNAL_APP_ID'].toString(),
      headings: notification.title,
      contents: notification.content,
      filters: [
        NotifFiltersParametersItemModel(
          field: 'tag',
          key: 'user_id',
          relation: '=',
          value: userId,
        ),
      ],
      targetChannels: 'push',
    );
    await _createNotification(notification: notification);
    await dioService.post(
      dotenv.env['SEND_NOTIFICATIONS_PATH'].toString(),
      data: createNotifModel.toJson(),
    );
  }
}
