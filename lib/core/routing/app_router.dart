import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/features/home/ui/login_screen.dart';
import 'package:appointment_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}