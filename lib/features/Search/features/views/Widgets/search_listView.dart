import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/books_List_View_Item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            //   child: BooksListViewItem(

            // );
            child: Text("data"),
          );
        },
      ),
    );
  }
}
