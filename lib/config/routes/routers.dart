import 'package:bookly_app_mvvm/features/bookdetail_feature/presntation/book_detail_screen.dart';
import 'package:bookly_app_mvvm/features/home_feature/presntion/views/home_screen.dart';
import 'package:bookly_app_mvvm/features/search_feature/presntation/view/search_screen.dart';
import 'package:bookly_app_mvvm/features/splah_feature/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String splash = "/";
  static const String homeScreen = "/homeScreen";
  static const String bookDetailScreen = "/bookDetail";
  static const String searchScreen = "/search";

  static final router = GoRouter(routes: [
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: bookDetailScreen,
      builder: (context, state) => const BookDetailScreen(),
    ),
    GoRoute(
      path:searchScreen,
      builder: (context, state) => const SearchScreen(),
    )
  ]);
}
