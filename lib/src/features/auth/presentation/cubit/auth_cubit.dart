import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/features/auth/domain/usecase/auth_register_use_case.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthRegisterUseCase authRegisterUseCase;

  AuthCubit({required this.authRegisterUseCase})
    : super(AuthState(status: AuthStatus.initial));

  Future<void> register({required Map<String, dynamic> userInfo}) async {
    try {
      final result = await authRegisterUseCase.call(userInfo);
      if (result.isRight) {
        emit(AuthState(status: AuthStatus.loaded));
      } else {
        throw Exception();
      }
    } catch (e) {
      emit(AuthState(status: AuthStatus.error));
    }
  }
}
