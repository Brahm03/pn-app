// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "home_cubit.dart";


class HomeState {
  String errorText;
  BookModel? books;
  HomeStatus status;
  HomeState({
    this.errorText = "",
    this.books,
    this.status = HomeStatus.initial,
  });
} // * main state

enum HomeStatus { initial, loading, error, loaded }
