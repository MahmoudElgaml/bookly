import 'package:bookly_app_mvvm/core/utils/components/costum_error_widget.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_cubit.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_newest_book_cubit.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view_model/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../home_feature/presntion/views/widgets/best_seller_card.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          if ( SearchCubit.get(context).theBooks == []) {
            return Center(
                child: Text(
              "type to search",
              style: AppStyle.textStyle18,
            ));
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => Gap(20.h),
                itemBuilder: (context, index) =>
                    BestSellerCard(book: SearchCubit.get(context).theBooks[index]),
                itemCount: 10,
              ),
            );
          }
        } else if (state is SearchFailure) {
          return CostumeErrorWidget(state.errorMessage);
        } else {
          return  Center(child: Text("Type TO Search",style: AppStyle.textStyle18,));
        }
      },
    );
  }
}
