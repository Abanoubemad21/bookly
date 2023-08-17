import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'Widgets/search_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: maincolor,
            ),
            body: SearchBody()));
  }
}
