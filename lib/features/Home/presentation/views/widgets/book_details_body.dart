import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_actions.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_Book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_ListView.dart';
import 'book_details_appBar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                const BookDetailsAppBar(),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: myQuerywidth(context, .27)),
                  child: CustomBookImage(img: null),
                ),
                const SizedBox(
                  height: 46,
                ),
                Text(
                  "The Imperfections Of Memory",
                  style:
                      Styles.styleText20.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Angelina Aluds",
                    style: Styles.styleText16.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  count: 0,
                  rate: 0,
                ),
                const SizedBox(
                  height: 30,
                ),
                const BookDetailsActions(),
                Expanded(
                  child: const SizedBox(
                    height: 50,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also Like",
                    style: Styles.styleText16,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomListView(
                  count: 9,
                  height: .16,
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
