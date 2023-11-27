import 'package:bookly_app_mvvm/config/themeing/dark_thme.dart';
import 'package:bookly_app_mvvm/config/themeing/ligth_theme.dart';
import 'package:bookly_app_mvvm/features/splah_feature/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyLigthTheme.lightTheme,
      darkTheme: MyDarkTheme.myDarkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
