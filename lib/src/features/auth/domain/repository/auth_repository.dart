// import 'package:pn_app/src/core/either/either.dart';
// import 'package:pn_app/src/core/failure/failures.dart';

import '../../../../core/either/either.dart';
import '../../../../core/failure/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> register({
    required Map<String, dynamic> userInfo,
  });

  Future<Either<Failure, void>> signIn({
    required Map<String, dynamic> userInfo,
  });
}
