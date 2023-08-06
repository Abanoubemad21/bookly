import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'core/utils/routes.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: maincolor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      routerConfig: AccessRoutes.router,
    );
  }
}
