import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/home.dart';
import 'package:bookly/features/Search/features/views/search_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/data/repos/home_repo_imp.dart';
import '../../features/Home/presentation/manager/book_search_cubit/book_search_cubit.dart';
import '../../features/Home/presentation/views/book_details.dart';

abstract class AccessRoutes {
  static const myHome = '/MyHome';
  static const bookDetailsView = '/BookDetailsView';
  static const searchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: myHome,
        builder: (context, state) => const MyHome(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImp>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => BookSearchCubit(getIt.get<HomeRepoImp>()),
            ),
            BlocProvider(
              create: (context) => SimilarBooksCubit(
                getIt.get<HomeRepoImp>(),
              ),
            ),
          ],
          child: const SearchView(),
        ),
      ),
    ],
  );
}
