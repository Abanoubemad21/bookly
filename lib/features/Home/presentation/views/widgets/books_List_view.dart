import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/routes.dart';
import 'books_List_View_Item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: BooksListViewItem(),
        );
      },
    );
  }
}
