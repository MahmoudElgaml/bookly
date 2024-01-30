import 'package:bookly_app_mvvm/core/utils/components/costum_error_widget.dart';
import 'package:bookly_app_mvvm/core/utils/components/costume_shimmer_loading.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_cubit.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_newest_book_cubit.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeNewestBookCubit, HomeNewestBookState>(
        builder: (context, state) {
          if (state is HomeGetNewestSuccess) {
            return ListView.separated(
              padding: EdgeInsets.zero,
              //  physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Gap(20.h),
              itemBuilder: (context, index) => BestSellerCard(
                book: state.newestBook[index],
              ),
              itemCount: state.newestBook.length,
            );
          } else if (state is HomeGetNewestError) {
            return CostumeErrorWidget(state.errorMessage);
          } else {
            return ListView.builder(
              itemBuilder: (context, index) => const ShimmerLoading(),
              itemCount: 10,
            );
            const ShimmerLoading();
          }
        },
        listener: (BuildContext context, HomeNewestBookState state) {});
  }
}
