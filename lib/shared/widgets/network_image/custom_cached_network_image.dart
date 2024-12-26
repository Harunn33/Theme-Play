import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/index.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    required this.url,
    required this.width,
    super.key,
    this.height,
    this.shape = BoxShape.circle,
    this.errorWidget,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });
  final String url;
  final double width;
  final double? height;
  final BoxShape shape;
  final Widget? errorWidget;
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
        return errorWidget ?? AppIcons.icError.svg;
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
