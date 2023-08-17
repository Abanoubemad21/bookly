import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Home/presentation/manager/book_search_cubit/book_search_cubit.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({
    super.key,
  });
  final TextEditingController searchCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookSearchCubit, BookSearchState>(
      builder: (context, state) {
        return TextField(
          controller: searchCon,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: const Opacity(
                    opacity: .7,
                    child: Icon(
                      EvaIcons.search,
                      color: Colors.white,
                    )),
                onPressed: () {
                  BlocProvider.of<BookSearchCubit>(context)
                      .FetchBookSearch(val: searchCon.text);
                },
              ),
              hintText: "search",
              focusedBorder: OutlinedinputBorder(),
              enabledBorder: OutlinedinputBorder()),
        );
      },
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
