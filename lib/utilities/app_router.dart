import 'package:flutter/material.dart';
import '../views/onboarding_view/onboarding_view.dart';
import '../views/splash_view.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    SplashView.routeName: (context) => const SplashView(),
    OnBoardingView.routeName: (context) => const OnBoardingView(),
  };
}
