import 'package:bookly_app_mvvm/features/home_feature/presntion/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarDetail extends StatelessWidget {
  const CustomAppBarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {
          Get.to(HomeScreen());
        }, icon: const Icon(Icons.highlight_remove)),
        const Spacer(),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}