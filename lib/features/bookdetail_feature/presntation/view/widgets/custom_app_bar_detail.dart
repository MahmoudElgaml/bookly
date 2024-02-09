import 'package:bookly_app_mvvm/config/routes/routers.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomAppBarDetail extends StatelessWidget {
  const CustomAppBarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {
          context.pop();
        }, icon: const Icon(Icons.arrow_back_outlined)),
        const Spacer(),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}