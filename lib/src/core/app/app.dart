import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/auth/data/repository/auth_repo_impl.dart';
import 'package:pn_app/src/features/auth/data/source/auth_data_source_impl.dart';
import 'package:pn_app/src/features/auth/domain/usecase/auth_register_use_case.dart';
import 'package:pn_app/src/features/auth/domain/usecase/auth_sign_in_usercase.dart';
import 'package:pn_app/src/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:pn_app/src/features/profile/prsentation/cubit/profile_cubit.dart';
import 'package:pn_app/src/features/profile/prsentation/cubit/upload_cubit.dart';

import '../router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UploadCubit()),
        BlocProvider(create: (context) => ProfileCubit()),
        BlocProvider(
          create: (context) => AuthCubit(
            authSignInUsercase: AuthSignInUsercase(
              authRepository: AuthRepoImpl(
                authDataSource: AuthDataSourceImpl(),
              ),
            ),
            authRegisterUseCase: AuthRegisterUseCase(
              authRepository: AuthRepoImpl(
                authDataSource: AuthDataSourceImpl(),
              ),
            ),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.dark(primary: AppColor.orange),
        ),
        title: 'PN app',
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: GetStorage().read('token') != null ? '/audio' : "/welcome",
      ),
    );
  }
}
