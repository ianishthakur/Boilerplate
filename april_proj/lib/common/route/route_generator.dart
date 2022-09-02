import 'package:boilerplate/feature/authentication/ui/screen/signup_screen.dart';
import 'package:boilerplate/feature/onboard/ui/screen/forgot_page.dart';
import 'package:boilerplate/feature/onboard/ui/screen/select_language_page.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/common/route/routes.dart';
import 'package:boilerplate/feature/onboard/ui/screen/onboard_page.dart';
import 'package:boilerplate/feature/onboard/ui/screen/splash_page.dart';

import '../../feature/authentication/ui/screen/login_screen.dart';
import '../../feature/onboard/ui/screen/changePassword_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardPage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.singup:
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );
      case Routes.selectLanguage:
        return MaterialPageRoute(builder: (_) => SelectLanguagePage());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => ForgotPasswordPage());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => ChangePasswordPage());

      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
