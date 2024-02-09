import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CostumeFeatureLoading extends StatelessWidget {
  const CostumeFeatureLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.red,
      child: SizedBox(
        height: 224.h,
        child: CarouselSlider.builder(
          itemCount: 110,
          itemBuilder: (context, index, realIndex) => Container(
            color: Colors.white10,
            child: SizedBox(
              width: 130.w,
              height: 224.h,
            ),
          ),
          options: CarouselOptions(
            height: 400.h,
            aspectRatio: 16 / 9,
            viewportFraction: .35,
            initialPage: 0,
            enlargeCenterPage: true,
            enlargeFactor: 0.33,
            scrollDirection: Axis.horizontal,
            //autoPlay: true,
          ),
        ),
      ),
    );
  }
}
