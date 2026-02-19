

import 'package:flutter/material.dart';

import '../router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'PN app',
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: '/welcome',
    );
  }
}
