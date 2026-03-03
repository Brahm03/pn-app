import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/subscription/data/source/subscription_data_source.dart';

class SubscriptionDataSourceImpl extends SubscriptionDataSource {
  @override
  Future<Either<Failure, Map>> getPrice() async {
    try {
      final response = await Dio().get(
        'http://localhost:1337/api/premiums',
        options: Options(
          headers: {'Authorization': 'Bearer ${GetStorage().read('token')}'},
        ),
      );
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return Right(response.data);
      } else {
        print('⚠️ Unsuccessful response code: ${response.statusCode}');
        throw DioException(requestOptions: response.requestOptions);
      }
    } on TimeoutException catch (e) {
      print('⏰ TimeoutException caught: ${e.message}');
      print('📝 Timeout error details: $e');
      throw TimeoutException(e.message);
    } on DioException catch (e) {
      print('🚫 DioException caught');
      print('📝 Error type: ${e.type}');
      print('📝 Error message: ${e.message}');
      print('📝 Request options: ${e.requestOptions}');

      if (e.response != null) {
        print('📊 Response status: ${e.response?.statusCode}');
        print('📊 Response data: ${e.response?.data}');
      }

      throw DioException(requestOptions: e.requestOptions);
    } catch (e) {
      print('💥 Unexpected exception caught: $e');
      print('📝 Exception type: ${e.runtimeType}');
      throw Exception(e.toString());
    }
  }
}
