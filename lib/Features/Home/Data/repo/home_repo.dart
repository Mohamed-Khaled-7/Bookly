import 'package:dartz/dartz.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/core/errors/faliers.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeatuerdBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
}
