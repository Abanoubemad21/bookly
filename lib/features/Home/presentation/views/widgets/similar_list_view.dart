import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/widgets/custom_error.dart';
import 'custom_Book_image.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({
    super.key,
    required this.height,
  });
  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: myQueryheight(context, height),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.bookmodel.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: false,
            padding: const EdgeInsets.symmetric(horizontal: 3),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: InkWell(
                  onTap: () {
                    GotoExtra(context, AccessRoutes.bookDetailsView,
                        state.bookmodel[index]);
                  },
                  child: CustomBookImage(
                      img: state
                          .bookmodel[index].volumeInfo!.imageLinks?.thumbnail),
                ),
              );
            },
          ),
        );
      } else if (state is SimilarBooksError) {
        return CustomErrorWidget(
          errMessage: state.err,
        );
      } else {
        return const CustomLoadingWidget();
      }
    });
  }
}
