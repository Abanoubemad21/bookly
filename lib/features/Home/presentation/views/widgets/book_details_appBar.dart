// ignore: file_names
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/routes.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            BackTo(context, AccessRoutes.myHome);
          },
          icon: const Icon(Icons.close_outlined),
        ),
        const Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
