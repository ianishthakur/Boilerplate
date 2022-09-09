import 'package:boilerplate/app/app_dev.dart';
import 'package:boilerplate/feature/authentication/ui/screen/const_signup_screen.dart';
import 'package:boilerplate/feature/authentication/ui/screen/pro_signup_Screen.dart';
import 'package:boilerplate/feature/drawer_NavigatorScreen/ui/widget/navigatorDrawer_Widget.dart';
import 'package:boilerplate/feature/homeScreen/ui/screen/homeScreen.dart';
import 'package:boilerplate/feature/onboard/ui/screen/forgot_page.dart';
import 'package:boilerplate/feature/onboard/ui/screen/select_language_page.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/common/route/routes.dart';
import 'package:boilerplate/feature/onboard/ui/screen/onboard_page.dart';
import 'package:boilerplate/feature/onboard/ui/screen/splash_page.dart';

import '../../feature/authentication/ui/screen/const_login_screen.dart';
import '../../feature/authentication/ui/screen/pro_loginScreen.dart';
import '../../feature/drawer_NavigatorScreen/ui/screen/navigator_Screen/editProfile_Screen.dart';
import '../../feature/drawer_NavigatorScreen/ui/screen/navigator_Screen/helpCenter_Screen.dart';
import '../../feature/drawer_NavigatorScreen/ui/screen/navigator_Screen/history_Screen.dart';
import '../../feature/drawer_NavigatorScreen/ui/screen/navigator_Screen/inviteUrFrnd_Screen.dart';
import '../../feature/drawer_NavigatorScreen/ui/screen/navigator_Screen/rewardPointWidget.dart';
import '../../feature/drawer_NavigatorScreen/ui/screen/navigator_Screen/settings_Screen.dart';
import '../../feature/onboard/ui/screen/changePassword_page.dart';
import '../constant/env.dart';

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
      case Routes.proLogin:
        return MaterialPageRoute(builder: (_) => ProLoginScreen());
      case Routes.proSignup:
        return MaterialPageRoute(builder: (_) => ProSignUpScreen());

      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        //  case Routes.app:
        // return MaterialPageRoute(builder: (_) => App(env: EnvValue.development));
       case Routes.settings:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
        case Routes.rewardPoint:
        return MaterialPageRoute(builder: (_) => RewardPointScreen());
        case Routes.inviteUrFrnd:
        return MaterialPageRoute(builder: (_) => InviteUrFrndScreen());
        case Routes.history:
        return MaterialPageRoute(builder: (_) => HistoryScreen());
        case Routes.helpCenter:
        return MaterialPageRoute(builder: (_) => HelpCenterScreen());
        case Routes.editProfile:
        return MaterialPageRoute(builder: (_) => EditProfileScreen());
             case Routes.navigatorDrawer:
        return MaterialPageRoute(builder: (_) => NavigatorDrawerWidget());
      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
