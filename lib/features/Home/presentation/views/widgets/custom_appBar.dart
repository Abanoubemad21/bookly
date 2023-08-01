import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../../core/utils/assets.dart';

Padding CustomAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
    child: Row(
      children: [
        Image.asset(
          AssetsData.logo,
          height: 18,
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: Icon(UniconsLine.search))
      ],
    ),
  );
}
