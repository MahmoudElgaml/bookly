import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/components/book_rating.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../home_feature/data/model/book_model.dart';

class BookDetail extends StatelessWidget {
  Items book;

  BookDetail(this.book, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: book.volumeInfo?.imageLinks?.smallThumbnail ?? "",
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.fill,
          width: 162.w,
          height: 243.h,
        ),
        Gap(40.h),
        Text(
          book.volumeInfo!.title??"",
          style: AppStyle.textStyle30,
          textAlign: TextAlign.center,
        ),
        Text(
          book.volumeInfo!.authors!.isEmpty?"no author exist":book.volumeInfo!.authors![0],
          style: AppStyle.textStyle18
              .copyWith(fontStyle: FontStyle.italic, color: opacitywhiteColor),
        ),
        Gap(14.h),
        const BookRating()
      ],
    );
  }
}
