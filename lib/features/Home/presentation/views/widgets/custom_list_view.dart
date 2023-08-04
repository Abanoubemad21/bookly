import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

Widget CustomListView(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .3,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 9,
      physics: BouncingScrollPhysics(),
      shrinkWrap: false,
      padding: EdgeInsets.symmetric(horizontal: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: CustomListItem(context),
        );
      },
    ),
  );
}
