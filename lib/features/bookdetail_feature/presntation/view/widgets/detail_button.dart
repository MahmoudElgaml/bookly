import 'package:bookly_app_mvvm/features/home_feature/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';

class DetailButton extends StatelessWidget {
  Items book;

  DetailButton(this.book, {super.key});

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
              "Free Book",
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
            onPressed: () async {
              if (book.volumeInfo!.previewLink != null) {
                await lanchBookUrl();
              }
            },
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

  Future<void> lanchBookUrl() async {
    final Uri uri = Uri.parse(book.volumeInfo!.previewLink!);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }
}
