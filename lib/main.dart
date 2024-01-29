import 'package:bookly_app_mvvm/config/routes/routers.dart';
import 'package:bookly_app_mvvm/config/themeing/dark_thme.dart';
import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/core/utils/service_locator.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_rebo_imp.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_cubit.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/view_model/home_newest_book_cubit.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/bloc_observer.dart';

void main() {
  setup();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(getIt.get<HomeReboImp>())
            ..getFeature()
            ,
        ),
        BlocProvider(
          create: (context) => HomeNewestBookCubit(getIt.get<HomeReboImp>())
           ..getNewestBook()
          ,
        )
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              theme: MyDarkTheme.myDarkTheme,
              //  darkTheme: MyDarkTheme.myDarkTheme,
              // themeMode: ThemeMode.dark,
              debugShowCheckedModeBanner: false,
            );
          }),
    );
  }
}
