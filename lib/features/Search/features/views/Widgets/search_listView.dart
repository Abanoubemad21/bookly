import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Home/presentation/manager/book_search_cubit/book_search_cubit.dart';
import 'search _listview_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookSearchCubit, BookSearchState>(
      builder: (context, state) {
        if (state is BookSearchSuccess) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: state.bookmodel.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SearchBooksListViewItem(
                    bookModel: state.bookmodel[index],
                  ),
                );
              },
            ),
          );
        } else if (state is BookSearchError) {
          return CustomErrorWidget(errMessage: state.err);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
