import 'package:flutter/material.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/Onboarding.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/SplashScreen.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/TemaScreen.dart';

import 'package:pn_app/src/features/auth/presentation/auth/screens/change_password_page.screen.dart';
import 'package:pn_app/src/features/auth/presentation/auth/screens/forgot_password_screen.dart';
import 'package:pn_app/src/features/auth/presentation/auth/screens/sign_up_screen.dart';
import 'package:pn_app/src/features/auth/presentation/auth/screens/welcome_screen.dart';
import 'package:pn_app/src/features/auth/presentation/screens/login_page.dart';
import 'package:pn_app/src/features/review/presentation/screen/review_screen.dart';
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
        return customRouter(Splashscreen());
        case "/splash":
         return customRouter(Onboarding());
        case "/onboarding":
       return customRouter(Temascreen());
        case "/tema":
        return customRouter(LoginPage());
         case '/welcome':
        return customRouter(WelcomeScreen());
         case '/change_password':
        return customRouter(ChangePassword());
          case '/sign_up':
        return customRouter(SignUpScreen());
         case '/forgot_password':
        return customRouter(ForgotPasswordScreen());
          case '/review':
        return customRouter(ReviewScreen());
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
