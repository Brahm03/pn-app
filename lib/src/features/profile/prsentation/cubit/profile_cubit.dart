import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/core/usecase/usecase.dart';
import 'package:pn_app/src/features/profile/domain/usecase/get_user_usecase.dart';
import 'package:pn_app/src/features/profile/prsentation/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetUserUseCase getUserUseCase;
  ProfileCubit({required this.getUserUseCase}) : super(ProfileState()) {
    getUser();
  }

  Future<void> logOut({required Function navigatorQilish}) async {
    await GetStorage().remove('token');
    navigatorQilish();
  }

  Future<void> getUser() async {
    final result = await getUserUseCase.call(NoParams());
    if (result.isRight) {
      emit(ProfileState(users: result.right, status: ProfileStatus.loaded));
    } else {
      emit(ProfileState(errorText: result.left.message, status: ProfileStatus.error));
    }
  }
}
