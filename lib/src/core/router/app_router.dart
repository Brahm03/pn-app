import 'package:flutter/material.dart';
import 'package:pn_app/src/features/auth/presentation/auth/screens/change_password_page.screen.dart';
import 'package:pn_app/src/features/auth/presentation/auth/screens/forgot_password_screen.dart';
import 'package:pn_app/src/features/auth/presentation/auth/screens/sign_up_screen.dart';
import 'package:pn_app/src/features/auth/presentation/auth/screens/welcome_screen.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return customRouter(LoginPage());
         case '/welcome':
        return customRouter(WelcomeScreen());
         case '/change_password':
        return customRouter(ChangePassword());
          case '/sign_up':
        return customRouter(SignUpScreen());
         case '/forgot_password':
        return customRouter(ForgotPasswordScreen());
      // case "sign_up":
      //   return customRouter();
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
