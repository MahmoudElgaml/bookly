import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/components/costum_error_widget.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view_model/book_detail_cubit.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view_model/book_detail_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikeBook extends StatelessWidget {
  const LikeBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailCubit, BookDetailState>(
      builder: (context, state) {
        if (state is BookDetailSuccess) {
          return SizedBox(
            height: 112.h,
            width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (context, index) =>  SizedBox(
                width: 7.w,
              ),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CachedNetworkImage(
                imageUrl:
                    state.books[index].volumeInfo?.imageLinks?.smallThumbnail ??
                        "",
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
                width: 70.w,
                height: 112.h,
              ),
            ),
          );
        } else if (state is BookDetailFailure) {
          return CostumeErrorWidget(state.errorMessage);
        } else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
