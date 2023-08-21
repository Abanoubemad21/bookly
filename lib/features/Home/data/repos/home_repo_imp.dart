import 'package:bookly/core/errors/failure.dart';

import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_services.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImp(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.getData(
          endPoint:
              "volumes?q=subject=science&Sorting=newest&Filtering=free-ebooks");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverfailure.fromDioException(e));
      }
      return left(serverfailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.getData(
          endPoint: "volumes?q=subject=science&Filtering=free-ebooks");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverfailure.fromDioException(e));
      }
      return left(serverfailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServices.getData(
          endPoint:
              "volumes?q=subject=science&Sorting=relevance&Filtering=free-ebooks");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverfailure.fromDioException(e));
      }
      return left(serverfailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchforBooks(
      {String value = 'all'}) async {
    try {
      var data = await apiServices.getData(
          endPoint: "volumes?q=$value&Sorting=relevance&Filtering=free-ebooks");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverfailure.fromDioException(e));
      }
      return left(serverfailure(e.toString()));
    }
  }
}
