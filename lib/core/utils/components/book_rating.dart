import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../app_colors.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star,color: Colors.yellow,),
        Gap(6.3.w),
        Text(
          "4.8",
          style: AppStyle.textStyle16,
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          "(2984)",
          style: AppStyle.textStyle14.copyWith(
            fontWeight: FontWeight.normal,
            color: opacitywhiteColor,
          ),
        ),
      ],
    );
  }
}

