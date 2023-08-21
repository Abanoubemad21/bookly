import 'package:bookly/core/widgets/custom_Button.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class BookDetailsActions extends StatelessWidget {
  BookDetailsActions({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Mybutton(
            text: "Free",
            backGroundcolor: Colors.white,
            fun: () async {
              Uri url = Uri.parse(bookModel.saleInfo!.buyLink ?? '');

              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            },
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
        ),
        Expanded(
          child: Mybutton(
            text: "Preview",
            backGroundcolor: HexColor('f08262'),
            fun: () async {
              Uri url0 = Uri.parse(bookModel.volumeInfo!.previewLink!);

              if (await canLaunchUrl(url0)) {
                await launchUrl(url0);
              }
            },
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
