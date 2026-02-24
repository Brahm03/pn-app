// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';
import 'package:pn_app/src/features/home/data/model/book_model.dart';
import 'package:pn_app/src/features/home/domain/repository/home_repository.dart';

class GetBooksUsecase extends UseCase<BookModel, NoParams> {
  HomeRepository homeRepository;
  GetBooksUsecase({required this.homeRepository});

  @override
  Future<Either<Failure, BookModel>> call(NoParams params) {
    return homeRepository.getBooks();
  }
}
