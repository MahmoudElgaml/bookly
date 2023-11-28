import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/book_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.h,
      child: CarouselSlider.builder(
        itemCount: 10,
        itemBuilder: (context, index, realIndex) => const BookItem(),
        options: CarouselOptions(
          height: 400.h,
          aspectRatio: 16 / 9,
          viewportFraction: .35,
          initialPage: 0,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,

          // pageSnapping: false,
        ),
      ),
    );
  }
}
