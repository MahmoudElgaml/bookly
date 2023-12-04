import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/components/book_rating.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.boojItem,
          width: 162.w,
          height: 243.h,
          fit: BoxFit.fill,
        ),
        Gap(40.h),
        Text("The Jungle Book",style:AppStyle.textStyle30 ,),
        Text("Rudyard Kipling",style: AppStyle.textStyle18.copyWith(
          color: opacitywhiteColor
        ),),
        Gap(14.h),
        BookRating()
      ],
    );
  }
}
