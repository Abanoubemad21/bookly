import 'package:flutter/material.dart';

Widget CustomBookImage(context) {
  return AspectRatio(
    aspectRatio: 2.6 / 4,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage("assets/images/test_image.png"),
            fit: BoxFit.cover,
          )),
    ),
  );
}
