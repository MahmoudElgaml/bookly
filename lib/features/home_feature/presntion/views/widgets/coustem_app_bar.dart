import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:  48.h),
      child: Row(
        children: [
          Image.asset(AppImages.logo,height:16.1.h,width: 75.w,),
          const Spacer(),
          IconButton(onPressed: () {} , icon: const Icon(Icons.search_rounded,size: 30,))
        ],

      ),
    );
  }
}
