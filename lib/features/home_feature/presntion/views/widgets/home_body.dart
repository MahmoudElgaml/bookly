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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const ListItem(),
            const Gap(27),
            Text(AppString.homeText, style: AppStyle.titleStyle),
            Gap(20.h),
            BestSellerList(),
          ],
        ),
      ),
    );
  }
}
