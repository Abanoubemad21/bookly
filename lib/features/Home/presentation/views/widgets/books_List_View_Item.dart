import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import '../../../../../constants.dart';

import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Goto(context, AccessRoutes.bookDetailsView);
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage("assets/images/test_image.png"),
                      fit: BoxFit.cover,
                    )),
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
                    'THE IMPERFECTIONS OF MEMORY IN PURGATORY.',
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
                  'Angelina Aluds',
                  style: Styles.styleText14.copyWith(color: HexColor('8b8993')),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 💲",
                      style: Styles.styleText20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRating(),
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
