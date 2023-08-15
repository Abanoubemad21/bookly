import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_actions.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_Book_image.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_ListView.dart';
import 'book_details_appBar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
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
                  child: CustomBookImage(
                      img: bookModel.volumeInfo.imageLinks?.thumbnail ?? ""),
                ),
                const SizedBox(
                  height: 46,
                ),
                Text(
                  bookModel.volumeInfo.title ?? "Not Found",
                  style:
                      Styles.styleText20.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.styleText16.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rate: bookModel.volumeInfo.averageRating?.round() ?? 0,
                  count: bookModel.volumeInfo.ratingsCount ?? 0,
                ),
                const SizedBox(
                  height: 30,
                ),
                BookDetailsActions(
                  bookModel: bookModel,
                ),
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
                const SimilarListView(
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
