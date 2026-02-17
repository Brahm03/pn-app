import 'package:flutter/material.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(LoginPage());
      // case "sign_up":
      //   return customRouter();
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
