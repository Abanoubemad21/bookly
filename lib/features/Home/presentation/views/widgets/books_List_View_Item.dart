import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import '../../../../../constants.dart';

import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GotoExtra(context, AccessRoutes.bookDetailsView, bookModel);
      },
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: CachedNetworkImage(
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                  imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: myQuerywidth(context, 0.7),
                  child: Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.styleText18.copyWith(
                      fontFamily: gTSectraFine,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo.authors?[0] ?? 'unknown',
                  style: Styles.styleText14.copyWith(color: HexColor('8b8993')),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      "Free",
                      style: Styles.styleText20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRating(
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                      rate: bookModel.volumeInfo.averageRating?.round() ?? 0,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
