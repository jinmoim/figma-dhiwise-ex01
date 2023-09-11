import 'package:flutter/material.dart';
import 'package:figma_dhiwise_ex01/presentation/splash_screen/splash_screen.dart';
import 'package:figma_dhiwise_ex01/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:figma_dhiwise_ex01/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:figma_dhiwise_ex01/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
