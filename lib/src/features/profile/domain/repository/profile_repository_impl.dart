import 'package:pn_app/src/features/profile/data/source/profile_data_source.dart';
import 'package:pn_app/src/features/profile/domain/repository/profile_repository.dart';
import '../../../../core/either/either.dart';
import '../../../../core/failure/failures.dart';
import '../../data/model/user_model.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileDataSource profileDataSource;
  ProfileRepositoryImpl({required this.profileDataSource});
  @override
  Future<Either<Failure, UserModel>> getUser() async {
    try {
      final result = await profileDataSource.getUser();
      if (result.isRight) {
        return Right(result.right);
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
