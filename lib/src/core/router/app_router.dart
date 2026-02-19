import 'package:flutter/material.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';
import 'package:pn_app/src/features/auth/presentation/screens/save_the_books/save_the_books.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(LoginPage());
      case "/save books":
        return customRouter(SaveTheBooks());
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
