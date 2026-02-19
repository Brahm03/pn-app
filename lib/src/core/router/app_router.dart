import 'package:flutter/material.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';
import 'package:pn_app/src/features/auth/presentation/screens/save_the_books/save_the_books.dart';
import 'package:pn_app/src/features/profile/prsentation/screens/edit_profile_screen.dart';
import 'package:pn_app/src/features/profile/prsentation/screens/profile_screen.dart';
import 'package:pn_app/src/features/profile/prsentation/screens/report_screen.dart';
import 'package:pn_app/src/features/subscription/presentation/screens/subscription_screen.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(LoginPage());
      case "/save books":
        return customRouter(SaveTheBooks());
        case '/subscription':
        return customRouter(SubscriptionScreen());
        case '/profile':
        return customRouter(ProfileScreen());
        case '/edit_profile':
        return customRouter(EditProfileScreen());
        case '/report':
        return customRouter(ReportScreen());
      // case "sign_up":
      //   return customRouter();
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
