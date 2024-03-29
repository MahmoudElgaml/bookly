import 'package:bookly_app_mvvm/config/routes/routers.dart';
import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/components/costum_error_widget.dart';
import 'package:bookly_app_mvvm/core/utils/components/costume_image.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view_model/book_detail_cubit.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/view_model/book_detail_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
                separatorBuilder: (context, index) => SizedBox(width: 7.w),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        context.push(AppRouter.bookDetailScreen,
                            extra: state.books[index]);
                      },
                      child: CostumeImage(
                        image: state.books[index].volumeInfo?.imageLinks
                                ?.smallThumbnail ??
                            "",
                        height: 112.h,
                        width: 70.w,
                      ),
                    )),
          );
        } else if (state is BookDetailFailure) {
          return CostumeErrorWidget(state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
