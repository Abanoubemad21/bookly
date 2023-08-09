import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/manager/featured_book_cubit/featured_book_States.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(super.initialState, this.homeRepo);
  final HomeRepo homeRepo;
  Future<void> FetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookError(failure.errMessage));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
