// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pn_app/src/core/either/either.dart';
import 'package:pn_app/src/core/failure/failures.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';
import 'package:pn_app/src/features/auth/domain/repository/auth_repository.dart';

class AuthSignInUsercase extends UseCase<void, Map<String, dynamic>> {
  AuthRepository authRepository;
  AuthSignInUsercase({required this.authRepository});

  @override
  Future<Either<Failure, void>> call(Map<String, dynamic> params) {
    return authRepository.signIn(userInfo: params);
  }
}
