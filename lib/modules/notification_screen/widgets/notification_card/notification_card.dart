import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/data/models/notification/notification_model.dart';
import 'package:theme_play/modules/notification_screen/enum/notification_type.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/helpers/date_time_helpers.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';

part '../notification_card_trailing/notification_card_trailing.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.notificationModel,
    super.key,
    this.onTap,
    this.onTapReject,
    this.onTapAccept,
  });
  final VoidCallback? onTap;
  final NotificationModel notificationModel;
  final VoidCallback? onTapReject;
  final VoidCallback? onTapAccept;

  @override
  Widget build(BuildContext context) {
    const paddings = AppPaddings.instance;
    const colors = AppColors.instance;
    const languageHelpers = LanguageHelpers.instance;
    const dateTimeHelpers = DateTimeHelpers.instance;
    return ListTile(
      onTap: onTap,
      minVerticalPadding: 0,
      contentPadding: paddings.horizontal + paddings.vertical,
      title: Text(
        languageHelpers.convertedCurrentLang(texts: notificationModel.title),
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            languageHelpers.convertedCurrentLang(
              texts: notificationModel.content,
            ),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          12.verticalSpace,
          Text(
            dateTimeHelpers.formatDateTime(notificationModel.createdAt),
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: colors.millionGrey,
                ),
          ),
        ],
      ),
      trailing: _NotificationCardTrailing(
        notificationType: notificationModel.type,
        rejectOnTap: onTapReject,
        acceptOnTap: onTapAccept,
      ),
    );
  }
}
