import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'book_search_state.dart';

class BookSearchCubit extends Cubit<BookSearchState> {
  BookSearchCubit(this.homeRepo) : super(BookSearchInitial());
  final HomeRepo homeRepo;
  static BookSearchCubit get(context) => BlocProvider.of(context);
  // ignore: non_constant_identifier_names
  Future<void> FetchBookSearch({required String val}) async {
    emit(BookSearchLoading());
    // ignore: unnecessary_null_comparison
    if (val == null) {
      emit(BookSearchLoading());
    } else {
      var result = await homeRepo.fetchSearchforBooks(value: val);
      result.fold((failure) {
        emit(BookSearchError(failure.errMessage));
      }, (books) {
        emit(BookSearchSuccess(books));
      });
    }
  }
}
