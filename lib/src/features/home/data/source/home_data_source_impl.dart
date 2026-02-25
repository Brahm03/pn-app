import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/home/data/model/book_model.dart';
import 'package:pn_app/src/features/home/data/source/home_data_source.dart';

class HomeDataSourceImpl extends HomeDataSource {
  @override
  Future<Either<Failure, BookModel>> getBooks() async {
    try {
      print(
        '📡 Making API request to: http://localhost:1337/api/books?populate=image&populate=file',
      );

      print("""
         {
            "Autherization" : "Bearer ${GetStorage().read('token')}"
          }

      """);

      final response = await Dio().get(
        'http://localhost:1337/api/books?populate=image&populate=file',
        options: Options(
          headers: {"Authorization": "Bearer ${GetStorage().read('token')}"},
        ),
      );

      print('✅ API Response received - Status Code: ${response.statusCode}');
      print('📦 Response data: ${response.data}');

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        print('🟢 Success - Status code in range 200-299');
        print('🔄 Parsing response to BookModel...');

        final bookModel = BookModel.fromJson(response.data);
        print('✅ Successfully parsed BookModel');
        print('📚 Books data: $bookModel');

        return Right(bookModel);
      } else {
        print('🔴 Error - Invalid status code: ${response.statusCode}');
        throw DioException(requestOptions: response.requestOptions);
      }
    } on TimeoutException catch (e) {
      print('⏰ Timeout Error: ${e.message}');
      print('Stack trace: ${e}');
      throw TimeoutException(e.message);
    } on DioException catch (e) {
      print('🚫 Dio Error: ${e.message}');
      print('🔧 Error type: ${e.type}');
      print('📍 Request options: ${e.requestOptions}');
      if (e.response != null) {
        print('📊 Error response data: ${e.response?.data}');
        print('📋 Error response status: ${e.response?.statusCode}');
      }
      print('Stack trace: ${e.stackTrace}');
      throw DioException(requestOptions: e.requestOptions);
    } catch (e) {
      print('❌ Unexpected Error: $e');
      print('Stack trace: $e');
      throw Exception(e);
    }
  }

  @override
  Future<Either<Failure, BookModel>> getLastReadingBooks() {
    throw UnimplementedError();
  }
}
