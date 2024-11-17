import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/shared/constants/colors.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    required this.url,
    required this.width,
    super.key,
    this.height,
    this.shape = BoxShape.circle,
    this.errorDefaultImage,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });
  final String url;
  final double width;
  final double? height;
  final BoxShape shape;
  final String? errorDefaultImage;
  final BoxFit? fit;
  final BorderRadius? borderRadius;

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
            borderRadius: borderRadius,
            shape: shape,
            image: DecorationImage(
              image: imageProvider,
              fit: fit,
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
          imageUrl: errorDefaultImage ?? '',
        );
      },
      progressIndicatorBuilder: (context, url, progress) {
        return Center(
          child: CircularProgressIndicator(
            color: AppColors.instance.powderBlue,
            strokeWidth: 2,
          ),
        );
      },
      imageUrl: url,
    );
  }
}
