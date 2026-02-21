import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/features/auth/domain/usecase/auth_register_use_case.dart';
import 'package:pn_app/src/features/auth/domain/usecase/auth_sign_in_usercase.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthRegisterUseCase authRegisterUseCase;
  AuthSignInUsercase authSignInUsercase;

  AuthCubit({
    required this.authRegisterUseCase,
    required this.authSignInUsercase,
  }) : super(AuthState(status: AuthStatus.initial));

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

  Future<void> signIn({required Map<String, dynamic> userInfo}) async {
    emit(AuthState(status: AuthStatus.loading));
    await Future.delayed(Duration(seconds: 1));
    try {
      final result = await authSignInUsercase.call(userInfo);
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
