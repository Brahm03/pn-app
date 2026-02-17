import 'package:flutter/material.dart';
import 'package:pn_app/src/core/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'PN app',
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: '/login',
    );
  }
}
