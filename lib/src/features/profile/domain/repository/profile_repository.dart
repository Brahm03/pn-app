import '../../../../core/either/either.dart';
import '../../../../core/failure/failures.dart';
import '../../data/model/user_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserModel>>  getUser();
}