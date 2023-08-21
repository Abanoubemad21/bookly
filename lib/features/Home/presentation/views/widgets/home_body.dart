import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_ListView.dart';
import 'books_List_view.dart';
import 'custom_appBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomListView(
                height: .3,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Newest Books",
                  style: Styles.styleText18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: BooksListView(),
          ),
        )
      ],
    );
  }
}
