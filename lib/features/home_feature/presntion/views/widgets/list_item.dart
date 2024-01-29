import 'package:bookly_app_mvvm/core/utils/components/costum_error_widget.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_cubit.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/book_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeGetFeatureSuccess) {
            return SizedBox(
              height: 224.h,
              child: CarouselSlider.builder(
                itemCount: state.FeatureBooks.length,
                itemBuilder: (context, index, realIndex) =>
                    BookItem(state.FeatureBooks[index]),
                options: CarouselOptions(
                  height: 400.h,
                  aspectRatio: 16 / 9,
                  viewportFraction: .35,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.33,
                  scrollDirection: Axis.horizontal,

                  // pageSnapping: false,
                ),
              ),
            );
          } else if (state is HomeGetFeatureError) {
            return CostumeErrorWidget(state.errorMessage);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
        listener: (BuildContext context, HomeState state) {});
  }
}
