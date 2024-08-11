import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/theme/theme_style/theme_style_model.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';
import 'package:theme_play/shared/widgets/network_image/custom_cached_network_image.dart';

class CustomSlider extends StatelessWidget {
  final SliderStyleModel sliderStyle;
  const CustomSlider({
    super.key,
    required this.sliderStyle,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: sliderStyle.images.map(
        (image) {
          return CustomCachedNetworkImage(
            url: image,
            width: 1.sw,
            shape: BoxShape.rectangle,
            borderRadius: sliderStyle.radius.radiusAll,
          );
        },
      ).toList(),
      options: CarouselOptions(
        autoPlay: sliderStyle.autoPlay,
        autoPlayInterval: sliderStyle.autoPlayInterval.seconds,
        autoPlayAnimationDuration: 500.milliseconds,
        enlargeCenterPage: true,
        viewportFraction: .93,
        scrollDirection: sliderStyle.scrollDirection != "h"
            ? Axis.vertical
            : Axis.horizontal,
      ),
    );
  }
}
