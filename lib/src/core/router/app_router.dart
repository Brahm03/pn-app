import 'package:flutter/material.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/Onboarding.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/SplashScreen.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/TemaScreen.dart';


class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(Splashscreen());
        case "/splash":
         return customRouter(Onboarding());
        case "/onboarding":
       return customRouter(Temascreen());
        case "/tema":
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
