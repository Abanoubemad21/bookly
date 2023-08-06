import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_ListView.dart';
import 'books_List_view.dart';
import 'custom_appBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomListView(
                count: 9,
                height: .3,
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Best Sellers",
                  style: Styles.styleText18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: BooksListView(),
          ),
        )
      ],
    );
  }
}
