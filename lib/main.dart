import 'package:bookly_app_mvvm/config/themeing/dark_thme.dart';
import 'package:bookly_app_mvvm/config/themeing/ligth_theme.dart';
import 'package:bookly_app_mvvm/features/splah_feature/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:  (context, child) {
        return GetMaterialApp(
          theme: MyDarkTheme.myDarkTheme,
        //  darkTheme: MyDarkTheme.myDarkTheme,
         // themeMode: ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );

      }
    );

  }
}
