// * child

import 'dart:async';
import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:pn_app/src/core/either/either.dart';
// import 'package:pn_app/src/core/failure/failures.dart';
// import 'package:pn_app/src/features/auth/data/source/auth_data_source.dart';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../core/either/either.dart';
import '../../../../core/failure/failures.dart';
import 'auth_data_source.dart';

class AuthDataSourceImpl extends AuthDataSource {
  @override
  Future<Either<Failure, void>> register({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      print('body $userInfo');
      final res = await Dio().post(
        'http://localhost:1337/api/auth/local/register',
        data: userInfo, // * body
      );

      if (res.statusCode! >= 200 && res.statusCode! < 300) {
        await GetStorage().write('token', res.data['jwt']);
        print(res.data);
        return Right('');
      } else {
        throw Exception();
      }
    } on SocketException catch (e) {
      throw SocketException(e.message);
    } on TimeoutException catch (e) {
      throw TimeoutException(e.message);
    } on DioException catch (e) {
      throw DioException(requestOptions: e.requestOptions);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Either<Failure, void>> signIn({
    required Map<String, dynamic> userInfo,
  }) async {
    //! {
    //! "identfier" : "Bobur@gmail.com",
    //! "password" : "nevergiveup123"
    //! }
    print('🔐 [signIn] Called with userInfo: $userInfo');
    try {
      print(
        '📡 [signIn] Sending POST request to http://localhost:1337/api/auth/local',
      );
      final response = await Dio().post(
        "http://localhost:1337/api/auth/local",
        data: userInfo,
      );
      print(
        '📨 [signIn] Response received | statusCode: ${response.statusCode} | data: ${response.data}',
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        print('✅ [signIn] Success! Writing token to storage...');
        // * Auth ->
        await GetStorage().write('token', response.data['jwt']);
        print('💾 [signIn] Token saved: ${response.data['jwt']}');
        return Right("");
      } else {
        print(
          '⚠️ [signIn] Unexpected status code: ${response.statusCode}, throwing DioException',
        );
        throw DioException(requestOptions: response.requestOptions);
      }
    } on SocketException catch (e) {
      print('🔌 [signIn] SocketException caught: ${e.message}');
      throw SocketException(e.message);
    } on TimeoutException catch (e) {
      print('⏱️ [signIn] TimeoutException caught: ${e.message}');
      throw TimeoutException(e.message);
    } on DioException catch (e) {
      print(
        '🌐 [signIn] DioException caught: ${e.message} | requestOptions: ${e.requestOptions}',
      );
      throw DioException(requestOptions: e.requestOptions);
    } catch (e) {
      print('❌ [signIn] Unknown exception caught: $e');
      throw Exception(e);
    }
  }
}
