import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/shared/constants/colors.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String url;
  final double width;
  final double? height;
  final BoxShape shape;
  final String? errorDefaultImage;
  const CustomCachedNetworkImage({
    super.key,
    required this.url,
    required this.width,
    this.height,
    this.shape = BoxShape.circle,
    this.errorDefaultImage,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width.w,
      height: height?.h,
      imageBuilder: (context, imageProvider) {
        return Container(
          width: width.w,
          height: height?.h,
          decoration: BoxDecoration(
            shape: shape,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return CachedNetworkImage(
          width: width.w,
          height: height?.h,
          imageBuilder: (context, imageProvider) {
            return Container(
              width: width.w,
              height: height?.h,
              decoration: BoxDecoration(
                shape: shape,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          imageUrl: errorDefaultImage ?? "",
        );
      },
      progressIndicatorBuilder: (context, url, progress) {
        return Center(
          child: CircularProgressIndicator(
            color: AppColors.instance.powderBlue,
            // value: progress.progress,
            strokeWidth: 2,
          ),
        );
      },
      imageUrl: url,
    );
  }
}