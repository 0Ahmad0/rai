import 'package:flutter/material.dart';
import '/app/screens/contact_us_screen.dart';
import '/app/screens/forgot_password_screen.dart';
import '/app/screens/home_screen.dart';
import '/app/screens/login_screen.dart';
import '/app/screens/navbar_screen.dart';
import '/app/screens/signup_screen.dart';

import '../../app/screens/splash_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.signUpRoute:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordScreen(),
        );
      case Routes.navbarRoute:
        return MaterialPageRoute(
          builder: (_) => NavbarScreen(),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );   case Routes.contactUsRoute:
        return MaterialPageRoute(
          builder: (_) => ContactUsScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(child: Text('NO DATA')),
              ),
        );
    }
  }
}
