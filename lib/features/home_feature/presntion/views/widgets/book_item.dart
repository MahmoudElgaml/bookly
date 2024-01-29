import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/book_model.dart';

class BookItem extends StatelessWidget {
  Items books;

  BookItem(this.books, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 224.h,
      child: Stack(alignment: Alignment.bottomRight, children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
              imageUrl: books.volumeInfo!.imageLinks!.thumbnail??"",
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(.2),
            child: const Icon(
              Icons.play_arrow,
            ),
          ),
        ),
      ]),
    );
  }
}
