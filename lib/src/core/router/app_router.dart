import 'package:flutter/material.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';
import 'package:pn_app/src/features/reading%20stats/presentation/screens/RedingStats_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(LoginPage());
      case "reading-stats":
        return customRouter(ReadingStatsScreen());
      default:
        return null;
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
