// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/home/data/model/book_model.dart';
import 'package:pn_app/src/features/home/data/source/home_data_source.dart';
import 'package:pn_app/src/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeDataSource homeDataSource;
  HomeRepositoryImpl({required this.homeDataSource});

  @override
  Future<Either<Failure, BookModel>> getBooks() async {
    try {
      final result = await homeDataSource.getBooks();

      if (result.isRight) {
        return Right(result.right);
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BookModel>> getLastReadingBooks() {
    throw UnimplementedError();
  }
}
