import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';
import 'package:pn_app/src/features/home/data/model/book_model.dart';
import 'package:pn_app/src/features/home/domain/usecase/get_books_usecase.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetBooksUsecase getBooksUsecase;
  HomeCubit({required this.getBooksUsecase}) : super(HomeState()) {
    getBooks();
  }

  Future<void> getBooks() async {
    final result = await getBooksUsecase.call(NoParams());

    if (result.isRight) {
      emit(HomeState(status: HomeStatus.loaded, books: result.right));
    } else {
      emit(HomeState(status: HomeStatus.error, errorText: result.left.message));
    }
  }
}
