import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 294.w,
      height: 105.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                style: AppStyle.bookNameStyle,
              ),
              Gap(2.h),
              Text(
                "mahmoud ELgamal",
                style: AppStyle.authorStyle,
              ),
              Gap(2.h),
              Row(
                children: [
                  Text(
                    "19.99",
                    style: AppStyle.boldStyle,
                  ),
                  Gap(50.w),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Text("  4.8  (2390)"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
