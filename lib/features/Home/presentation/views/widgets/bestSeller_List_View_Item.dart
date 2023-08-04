import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                width: MediaQuery.of(context).size.width * .7,
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
                  BookRating()
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: HexColor('ffdd4f'),
        ),
        const SizedBox(
          width: 5.3,
        ),
        Text(
          "4.8",
          style: Styles.styleText14,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2500)",
          style: Styles.styleText14,
        )
      ],
    );
  }
}
