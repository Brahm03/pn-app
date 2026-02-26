import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/profile/data/model/user_model.dart';
import 'package:pn_app/src/features/profile/data/source/profile_data_source.dart';

class ProfileDataSourceImpl extends ProfileDataSource {
  @override
  Future<Either<Failure, UserModel>> getUser() async {
    print('📱 ProfileDataSourceImpl.getUser() called');

    try {
      print(
        '🌐 Attempting to make API request to: http://localhost:1337/api/users/me',
      );

      final response = await Dio().get(
        'http://localhost:1337/api/users/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${GetStorage().read('token')}',
          },
        ),
      );

      print('✅ API request completed');
      print('📊 Response status code: ${response.statusCode}');
      print('📦 Response data: ${response.data}');

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        print(
          '🎉 Success response (${response.statusCode}) - parsing user data',
        );

        try {
          final userModel = UserModel.fromJson(response.data);
          print('✅ User model parsed successfully: ${userModel.toString()}');
          return Right(userModel);
        } catch (parseError) {
          print('❌ Error parsing user model: $parseError');
          rethrow;
        }
      } else {
        print('⚠️ Unsuccessful response code: ${response.statusCode}');
        throw DioException(requestOptions: response.requestOptions);
      }
    } on TimeoutException catch (e) {
      print('⏰ TimeoutException caught: ${e.message}');
      print('📝 Timeout error details: $e');
      throw TimeoutException(e.message);
    } on SocketException catch (e) {
      print('🔌 SocketException caught: ${e.message}');
      print(
        '🌍 Network connection error. Check if server is running and accessible.',
      );
      print('📝 Socket error details: $e');
      throw SocketException(e.message);
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
