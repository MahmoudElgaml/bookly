import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumeImage extends StatelessWidget {

  String image;
  double width;
  double height;

  CostumeImage({required this.image,required this.height ,required this.width,super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: CachedNetworkImage(
        imageUrl: image,
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.fill,
        width: width,
        height: height,
      ),
    );
  }
}
