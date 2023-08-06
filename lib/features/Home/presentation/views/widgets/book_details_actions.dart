import 'package:bookly/core/widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BookDetailsActions extends StatelessWidget {
  const BookDetailsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Mybutton(
            text: "19.99💲",
            backGroundcolor: Colors.white,
            fun: () {},
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
        ),
        Expanded(
          child: Mybutton(
            text: "Free Preview",
            backGroundcolor: HexColor('f08262'),
            fun: () {},
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
