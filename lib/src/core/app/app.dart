import 'package:flutter/material.dart';

import 'package:pn_app/src/features/Splash/presentation/Screens/Onboarding.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PN app',
     
      home: Onboarding(),
      
    );
  }
}
