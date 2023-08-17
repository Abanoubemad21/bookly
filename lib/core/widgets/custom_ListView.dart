import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_cubit/featured_book_Cubit.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_cubit/featured_book_States.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants.dart';
import '../../features/Home/presentation/views/widgets/custom_Book_image.dart';
import '../utils/routes.dart';
import 'custom_error.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.height,
  });
  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (context, state) {
      if (state is FeaturedBookSuccess) {
        return SizedBox(
          height: myQueryheight(context, height),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.bookmodel.length,
            physics: BouncingScrollPhysics(),
            shrinkWrap: false,
            padding: EdgeInsets.symmetric(horizontal: 3),
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
                          .bookmodel[index].volumeInfo.imageLinks!.thumbnail),
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBookError) {
        return CustomErrorWidget(
          errMessage: state.err,
        );
      } else {
        return CustomLoadingWidget();
      }
    });
  }
}
