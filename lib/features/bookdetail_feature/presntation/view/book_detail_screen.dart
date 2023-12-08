import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view/widgets/book_detail.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view/widgets/detail_button.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view/widgets/like_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'widgets/custom_app_bar_detail.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBarDetail(),
            const Gap(25),
            const BookDetail(),
            const Gap(20),
            const DetailButton(),
            const Gap(10),
            Text(
              "You can also like",
              textAlign:  TextAlign.start,
              style: AppStyle.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
            const Gap(7),
            const LikeBook()
          ],
        ),
      ),
    );
  }
}
