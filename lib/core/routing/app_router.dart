import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/login/login_screen.dart';
import 'package:doctor/features/onboardig/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
    case  Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen()
        );
        case  Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen()
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
