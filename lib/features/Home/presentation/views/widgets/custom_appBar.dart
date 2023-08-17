import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Goto(context, AccessRoutes.searchView);
              },
              icon: const Icon(UniconsLine.search))
        ],
      ),
    );
  }
}
