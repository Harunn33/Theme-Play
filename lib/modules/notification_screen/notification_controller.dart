import 'package:get/get.dart';
import 'package:theme_play/data/models/notification/notification_model.dart';
import 'package:theme_play/data/network/repository/notifications/notifications_repository.dart';
import 'package:theme_play/data/network/repository/shared_codes_to_user/index.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';

final class NotificationController extends GetxController {
  final constants = ConstantsInstances.instance;
  final languageHelpers = LanguageHelpers.instance;

  late final Rx<Future<List<NotificationModel>>> notificationsFuture;

  @override
  void onInit() {
    super.onInit();
    notificationsFuture = getNotifications().obs;
  }

  void refreshNotifications() {
    notificationsFuture.value = getNotifications();
  }

  Future<List<NotificationModel>> getNotifications() async {
    final notificationsRepository = NotificationsRepository.instance;
    return notificationsRepository.getNotifications();
  }

  Future<void> onTapNotification() async {
    Get.back();
    final homeController = Get.find<HomeController>();
    homeController.tabController.animateTo(1);
  }

  Future<void> onTapReject({
    required String sharingUser,
    required String themeShareCode,
  }) async {
    final sharedCodesToUserRepository = SharedCodesToUserRepository.instance;
    await sharedCodesToUserRepository.updateEditAccess(
      sharingUser: sharingUser,
      themeShareCode: themeShareCode,
      themeEditAccess: false,
    );
  }

  Future<void> onTapAccept({
    required String sharingUser,
    required String themeShareCode,
  }) async {
    final sharedCodesToUserRepository = SharedCodesToUserRepository.instance;
    await sharedCodesToUserRepository.updateEditAccess(
      sharingUser: sharingUser,
      themeShareCode: themeShareCode,
      themeEditAccess: true,
    );
  }
}
