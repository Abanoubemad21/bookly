part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> bookmodel;

  const NewestBooksSuccess(this.bookmodel);
}

class NewestBooksError extends NewestBooksState {
  final String err;

  const NewestBooksError(this.err);
}
