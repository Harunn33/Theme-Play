import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/strings.dart';
import 'package:theme_play/shared/enums/app_images.dart';

class CustomFutureBuilder<T> {
  CustomFutureBuilder(Future<T> future) : _future = future;
  final Future<T> _future;

  Widget toBuild({
    required Widget Function(T? data) onSuccess,
    final Widget? loadingWidget,
    final Widget? notFoundWidget,
    final Widget? emptyWidget,
    final Widget? onError,
    final T? data,
  }) =>
      FutureBuilder<T>(
        future: _future,
        initialData: data,
        builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
          final result = switch (snapshot.connectionState) {
            ConnectionState.waiting ||
            ConnectionState.active =>
              loadingWidget ?? _defaultLoadingWidget,
            ConnectionState.done => snapshot.hasData
                ? snapshot.data is List
                    ? (snapshot.data! as List).isEmpty
                        ? emptyWidget ?? _defaultEmptyWidget
                        : onSuccess(snapshot.data)
                    : onSuccess(snapshot.data)
                : onError ?? _defaultErrorWidget,
            _ => notFoundWidget ?? _defaultNotFoundWidget,
          };
          return result;
        },
      );

  Widget get _defaultLoadingWidget => const Center(
        child: CircularProgressIndicator(),
      );
  Widget get _defaultNotFoundWidget => const Center(child: Text('Not Found'));
  Widget get _defaultErrorWidget => const Center(child: Text('Error'));
  Widget get _defaultEmptyWidget => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImages.paintRoller.pngWithAttiributes(
              color: AppColors.instance.black,
              height: 50.h,
            ),
            12.verticalSpace,
            Text(
              AppStrings.instance.noResultFound.tr,
              style: Theme.of(Get.context!).textTheme.labelSmall,
            ),
          ],
        ),
      );
}

extension FutureExt<T> on Future<T> {
  CustomFutureBuilder<T> get getData => CustomFutureBuilder(this);
}
