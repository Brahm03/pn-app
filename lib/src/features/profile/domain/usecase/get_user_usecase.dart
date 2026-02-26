import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';
import 'package:pn_app/src/features/profile/data/model/user_model.dart';
import 'package:pn_app/src/features/profile/domain/repository/profile_repository.dart';

class GetUserUseCase extends UseCase<UserModel, NoParams>{
ProfileRepository profileRepository;
GetUserUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, UserModel>> call(NoParams params) {
    return profileRepository.getUser();
  }
}