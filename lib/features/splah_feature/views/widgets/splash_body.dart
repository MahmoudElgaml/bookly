import 'package:bookly_app_mvvm/core/utils/app_images.dart';
import 'package:bookly_app_mvvm/core/utils/app_string.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    Get.to(const HomeScreen(),transition: Transition.leftToRight,duration: const Duration(seconds: 2));
  });
}
}
