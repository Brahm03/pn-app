import '../../../../core/either/either.dart';
import '../../../../core/failure/failures.dart';

abstract class ProfileUseCase {
  Future<Either<Failure, void>> register({
    required Map<String, dynamic> userInfo,
  });

  Future<Either<Failure, void>> signIn({
    required Map<String, dynamic> userInfo,
  });
}
