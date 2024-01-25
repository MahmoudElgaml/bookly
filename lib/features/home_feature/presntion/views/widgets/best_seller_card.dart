import 'package:bookly_app_mvvm/config/routes/routers.dart';
import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/components/book_rating.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(AppRouter.bookDetailScreen);
      },
      child: SizedBox(
        width: 294.w,
        height: 140.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 70.w,
                height: 140.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.w),
                    border: Border.all(
                      color: Colors.white.withOpacity(.4),
                      width: .3,
                    )),
                child: Image.asset(
                  AppImages.bookTest,
                )),
            Gap(30.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      "Spider Man",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppStyle.textStyle20,
                    ),
                  ),
                  Gap(3.h),
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
                      const Spacer(),
                      const BookRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
