// * father

import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';

abstract class AuthDataSource {
  Future<Either<Failure, void>> register({required Map<String, dynamic> userInfo}); // * head
}
