import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/home/data/model/book_model.dart';

abstract class HomeDataSource {
  Future<Either<Failure, BookModel>> getBooks();
  Future<Either<Failure, BookModel>> getLastReadingBooks();
}
