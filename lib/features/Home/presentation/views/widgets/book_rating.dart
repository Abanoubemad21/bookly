import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rate,
      required this.count});
  final int rate;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          EvaIcons.star,
          color: HexColor('ffdd4f'),
        ),
        const SizedBox(
          width: 5.3,
        ),
        Text(
          '$rate',
          style: Styles.styleText16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            "($count)",
            style: Styles.styleText14,
          ),
        )
      ],
    );
  }
}
