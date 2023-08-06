import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton(
      {super.key,
      required this.text,
      required this.backGroundcolor,
      required this.fun,
      required this.textColor,
      this.borderRadius});
  final String text;
  final Color backGroundcolor;
  final Function fun;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundcolor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15)),
        ),
        onPressed: () {
          fun();
        },
        child: Text(text,
            style: Styles.styleText18
                .copyWith(fontWeight: FontWeight.bold, color: textColor)),
      ),
    );
  }
}
