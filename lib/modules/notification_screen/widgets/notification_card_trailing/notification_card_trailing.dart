part of '../notification_card/notification_card.dart';

class _NotificationCardTrailing extends StatelessWidget {
  const _NotificationCardTrailing({
    required this.notificationType,
    this.rejectOnTap,
    this.acceptOnTap,
  });
  final String notificationType;
  final VoidCallback? rejectOnTap;
  final VoidCallback? acceptOnTap;

  @override
  Widget build(BuildContext context) {
    const colors = AppColors.instance;
    if (notificationType != NotificationType.themeEditAccess.value) {
      return const SizedBox.shrink();
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Bounceable(
          onTap: rejectOnTap,
          child: AppIcons.icReject.svgWithAttiributes(
            color: colors.error,
            height: 24.h,
          ),
        ),
        16.horizontalSpace,
        Bounceable(
          onTap: acceptOnTap,
          child: AppIcons.icAccept.svgWithAttiributes(
            color: colors.success,
            height: 24.h,
          ),
        ),
      ],
    );
  }
}
