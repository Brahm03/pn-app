import 'package:flutter/material.dart';
import 'package:pn_app/src/features/auth/presentation/home/home_screen.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(LoginPage());
      case "/home":
        return customRouter(HomeScreen());
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
