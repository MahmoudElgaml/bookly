import 'package:bookly_app_mvvm/core/utils/app_string.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/coustem_app_bar.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            ListItem(),
            Gap(20),
            Text(
              AppString.homeText,
              style: TextStyle(fontWeight: FontWeight.w400,fontSize:15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
