import 'package:bookly_app_mvvm/features/home_feature/presntion/views/widgets/coustem_app_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
        CustomAppBar(),
      
        ],
      ),
    );
  }
}
