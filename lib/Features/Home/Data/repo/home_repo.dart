import 'package:dartz/dartz.dart';
import 'package:project/Features/Home/Data/models/book_model/book_model.dart';
import 'package:project/core/errors/faliers.dart';

abstract class HomeRepo {
  Future<Either<Faliers,List<BookModel>>> fetchVerticalBooks();
  Future<Either<Faliers,List<BookModel>>> fetchHorizontalList();
}
