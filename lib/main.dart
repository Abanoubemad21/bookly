import 'package:bookly/constants.dart';

import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/repos/home_repo_imp.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_cubit/featured_book_Cubit.dart';
import 'package:bookly/features/Home/presentation/manager/newest_book_cubit/newest_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'core/utils/routes.dart';

void main() {
  setupServiceLocator();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..FetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..FetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: maincolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AccessRoutes.router,
      ),
    );
  }
}
