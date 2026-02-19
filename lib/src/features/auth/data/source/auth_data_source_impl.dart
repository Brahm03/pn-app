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
}
