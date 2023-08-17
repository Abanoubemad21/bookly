import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Search/features/views/Widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'search_listView.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SearchTextField(),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Search Results ",
                style: Styles.styleText18,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SearchListView(),
        ],
      ),
    );
  }
}
