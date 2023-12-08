import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150.w,
          height: 48.h,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(

                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(15.r)))),
            child: Text(
              "19.99",
              style: AppStyle.textStyle18.copyWith(
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: 150.w,
          height: 48.h,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: pinkColor,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(15.r)))),
            child: Text(
              "Free preview",
              style: AppStyle.textStyle16
                  .copyWith(color: whiteColor, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}