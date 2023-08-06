import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../features/Home/presentation/views/widgets/custom_Book_image.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.height, required this.count});
  final double height;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: myQueryheight(context, height),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: count,
        physics: BouncingScrollPhysics(),
        shrinkWrap: false,
        padding: EdgeInsets.symmetric(horizontal: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: CustomBookImage(context),
          );
        },
      ),
    );
  }
}
