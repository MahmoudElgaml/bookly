import 'package:bookly_app_mvvm/core/utils/app_string.dart';
import 'package:bookly_app_mvvm/core/utils/styles.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/best_seller_card.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/best_seller_list.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/coustem_app_bar.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const ListItem(),
                Gap(45.h),
                Text(AppString.homeText, style: AppStyle.textStyle18),
                Gap(20.h),
                Expanded(child: BestSellerList())
              ],
            ),
          );

  }
}
