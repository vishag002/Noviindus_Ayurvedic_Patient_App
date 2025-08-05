import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noviindus_ayurvedic_patient_app/views/auth/login_screen.dart';
import 'package:noviindus_ayurvedic_patient_app/views/splash_screen.dart';
import 'package:noviindus_ayurvedic_patient_app/views/user%20screens/home_screen.dart';
import 'package:noviindus_ayurvedic_patient_app/views/user%20screens/register_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    // Splash screen
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen();
      },
    ),

    //Home Screen
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    ),

    //Login Screen
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (BuildContext context, GoRouterState state) {
        return LoginScreen();
      },
    ),

    //Register Screen
    GoRoute(
      path: '/registerScreen',
      name: 'registerScreen',
      builder: (BuildContext context, GoRouterState state) {
        return RegisterScreen();
      },
    ),
  ],
);
