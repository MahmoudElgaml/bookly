import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 224.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

      ),
      child: Stack(alignment: Alignment.bottomRight, children: [
        Image.asset(
          AppImages.boojItem,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(.2),
            child: const Icon(Icons.play_arrow,),
          ),
        ),
      ]),
    );
  }
}
