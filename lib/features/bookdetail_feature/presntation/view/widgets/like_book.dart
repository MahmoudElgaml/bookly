import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikeBook extends StatelessWidget {
  const LikeBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 112.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 5,),

        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Image.asset(

          AppImages.boojItem,
          fit: BoxFit.fill,
          width: 70.w,
          height: 112.h,
        ),
      ),
    );
  }
}
