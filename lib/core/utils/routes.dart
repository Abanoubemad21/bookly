import 'package:bookly/features/Home/presentation/views/home.dart';
import 'package:bookly/features/Search/features/views/search_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/views/book_details.dart';

abstract class AccessRoutes {
  static const myHome = '/MyHome';
  static const bookDetailsView = '/BookDetailsView';
  static const searchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: myHome,
        builder: (context, state) => MyHome(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
