part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> bookmodel;

  const SimilarBooksSuccess(this.bookmodel);
}

class SimilarBooksError extends SimilarBooksState {
  final String err;

  const SimilarBooksError(this.err);
}
