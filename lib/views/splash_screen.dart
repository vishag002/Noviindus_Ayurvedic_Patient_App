import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noviindus_ayurvedic_patient_app/core/image_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //navigation trigger
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      context.go('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splashScreenBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Image.asset(AppImages.splashScreenLogo)),
      ),
    );
  }
}
