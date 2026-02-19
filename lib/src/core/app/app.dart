import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/features/profile/prsentation/cubit/upload_cubit.dart';

import '../router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => UploadCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'PN app',
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: "/report",
      ),
    );
  }
}
