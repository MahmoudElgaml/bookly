import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 294.w,
      height: 105.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70.w,
              height: 105.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.w),
                  border: Border.all(
                    color: Colors.white.withOpacity(.4),
                    width: .3,
                  )),
              child: Image.asset(
                AppImages.bookTest,
              )),
          Gap(27.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Spider Man",
                style: AppStyle.textStyle20,
              ),
              Gap(2.h),
              Text(
                "mahmoud ELgamal",
                style: AppStyle.textStyle14.copyWith(
                  color: const Color(0xffb7b6bc),
                ),
              ),
              Gap(2.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "19.99",
                    style: AppStyle.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Gap(50.w),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "4.8",
                        style: AppStyle.textStyle16,
                      ),
                      SizedBox(width: 10.w,),
                      Text(
                        "(2984)",
                        style: AppStyle.textStyle14.copyWith(
                          fontWeight: FontWeight.normal,
                          color: opacitywhiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
