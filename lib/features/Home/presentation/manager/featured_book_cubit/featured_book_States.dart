import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksStates extends Equatable {
  const FeaturedBooksStates();
  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBooksStates {}

class FeaturedBookLoading extends FeaturedBooksStates {}

class FeaturedBookSuccess extends FeaturedBooksStates {
  final List<BookModel> bookmodel;

  FeaturedBookSuccess(this.bookmodel);
}

class FeaturedBookError extends FeaturedBooksStates {
  final String err;

  FeaturedBookError(this.err);
}
