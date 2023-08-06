import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Opacity(
                opacity: .7,
                child: Icon(
                  EvaIcons.search,
                  color: Colors.white,
                )),
            onPressed: () {},
          ),
          hintText: "search",
          focusedBorder: OutlinedinputBorder(),
          enabledBorder: OutlinedinputBorder()),
    );
  }

  OutlineInputBorder OutlinedinputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(15));
  }
}
