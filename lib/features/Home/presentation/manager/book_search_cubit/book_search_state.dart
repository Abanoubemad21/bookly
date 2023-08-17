part of 'book_search_cubit.dart';

sealed class BookSearchState extends Equatable {
  const BookSearchState();

  @override
  List<Object> get props => [];
}

final class BookSearchInitial extends BookSearchState {}

class BookSearchLoading extends BookSearchState {}

class BookSearchSuccess extends BookSearchState {
  final List<BookModel> bookmodel;

  const BookSearchSuccess(this.bookmodel);
}

class BookSearchError extends BookSearchState {
  final String err;

  const BookSearchError(this.err);
}
