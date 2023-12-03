import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, ),
      child: ListView.separated(
         padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => Gap(20.h),
        itemBuilder: (context, index) => const BestSellerCard(),
        itemCount: 10,
      ),
    );
  }
}
