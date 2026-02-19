import 'package:flutter/material.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';
import 'package:pn_app/src/features/profile/prsentation/screens/edit_profile_screen.dart';
import 'package:pn_app/src/features/profile/prsentation/screens/profile_screen.dart';
import 'package:pn_app/src/features/profile/prsentation/screens/report_screen.dart';
import 'package:pn_app/src/features/subscription/presentation/screens/subscription_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(LoginPage());
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
