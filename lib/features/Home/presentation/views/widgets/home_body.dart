import 'package:flutter/material.dart';

import 'custom_appBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        const SizedBox(
          height: 3,
        ),
        CustomListItem(context),
      ],
    );
  }

  Widget CustomListItem(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/images/test_image.png"),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
