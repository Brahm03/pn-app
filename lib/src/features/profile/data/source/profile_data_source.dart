import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/features/profile/data/model/user_model.dart';

abstract class ProfileDataSource {
  Future<Either<Failure, UserModel>>  getUser();
}