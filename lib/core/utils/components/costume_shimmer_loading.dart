import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.red,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70.w,
                height: 140.h,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white.withOpacity(.4),
                  width: .3,
                )),
              ),
              Gap(30.w),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white10,
                      width: 100.w,
                      height: 15.h,
                    ),
                    Gap(9.h),
                    Container(
                      width: 40.w,
                      height: 15.h,
                      color: Colors.white10,
                    ),
                    Gap(9.h),
                    Container(
                      color: Colors.white10,
                      width: double.infinity,
                      height: 15.h,
                    ),
                    Gap(10.h),
                    Row(
                      children: [
                       Container(
                         width: 30.w,
                         height: 15.h,
                         color: Colors.white10,
                       ),
                        const Spacer(),
                        Container(
                          width: 30.w,
                          height: 15.h,
                          color: Colors.white10,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
