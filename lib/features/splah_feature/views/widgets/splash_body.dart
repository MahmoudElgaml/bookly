import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Images.logo,
      ),
    );
  }
}
