import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/features/profile/prsentation/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState());

  Future<void> logOut({required Function navigatorQilish}) async {
    await GetStorage().remove('token');
    navigatorQilish();
  }
}
