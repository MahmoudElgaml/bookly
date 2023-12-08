import 'package:bookly_app_mvvm/config/routes/routers.dart';
import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/app_string.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
@override
  void initState() {

    super.initState();
    goToHome();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppImages.logo,
        ),
        const Text(
          AppString.splashText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
void goToHome() {
  Future.delayed(const Duration(seconds: 3),(){
    context.go(AppRouter.homeScreen);
  });
}
}
