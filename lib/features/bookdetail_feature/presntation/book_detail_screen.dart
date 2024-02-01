import 'package:bookly_app_mvvm/core/utils/app_colors.dart';
import 'package:bookly_app_mvvm/core/utils/service_locator.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/data/rebo/book_detail_rebo_impl.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view/widgets/book_detail.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view/widgets/detail_button.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view/widgets/like_book.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view_model/book_detail_cubit.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'view/widgets/custom_app_bar_detail.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var extraString = GoRouterState.of(context).extra! as Items;
    return BlocProvider(
      create: (context) => BookDetailCubit(getIt.get<BookDetailReboImpl>())
        ..getSameBook(extraString.volumeInfo!.categories!.isEmpty
            ? extraString.volumeInfo!.title ?? ""
            : extraString.volumeInfo!.categories![0]),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 40.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBarDetail(),
                const Gap(25),
                BookDetail(extraString),
                const Gap(20),
                DetailButton(extraString),
                const Gap(10),
                Text(
                  "You can also like",
                  textAlign: TextAlign.start,
                  style: AppStyle.textStyle14
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const Gap(7),
                const LikeBook()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
