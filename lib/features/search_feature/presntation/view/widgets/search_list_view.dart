import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_cubit.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../home_feature/presntion/views/widgets/best_seller_card.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => Gap(20.h),
        itemBuilder: (context, index) =>
            BestSellerCard(book: HomeNewestBookCubit.get(context).book[index]),
        itemCount: 10,
      ),
    );
  }
}
