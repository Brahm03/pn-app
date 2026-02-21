// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/auth/data/source/auth_data_source.dart';
import 'package:pn_app/src/features/auth/domain/repository/auth_repository.dart';

class AuthRepoImpl extends AuthRepository {
  final AuthDataSource authDataSource;
  AuthRepoImpl({required this.authDataSource});

  @override
  Future<Either<Failure, void>> register({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final result = await authDataSource.register(userInfo: userInfo);
      if (result.isRight) {
        return Right('');
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, void>> signIn({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final result = await authDataSource.signIn(userInfo: userInfo);
      if (result.isRight) {
        return Right('');
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure());
    }
  }
}
