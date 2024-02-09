import 'package:bookly_app_mvvm/config/routes/routers.dart';
import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/components/book_rating.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/data/model/thesend_book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/book_model.dart';

class BestSellerCard extends StatelessWidget {
  Items book;


  BestSellerCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.bookDetailScreen,extra: book,);
      },
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70.w,
              height: 140.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                color: Colors.white.withOpacity(.4),
                width: .4,
              )),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: book.volumeInfo?.imageLinks?.smallThumbnail ?? " ",
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Gap(30.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      book.volumeInfo?.title ?? " ",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppStyle.textStyle20,
                    ),
                  ),
                  Gap(3.h),
                  Text(
                    book.volumeInfo!.authors!.isNotEmpty
                        ? book.volumeInfo!.authors![0]
                        : " no author",
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
