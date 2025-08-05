import 'package:flutter/material.dart';
import 'package:noviindus_ayurvedic_patient_app/core/router_class.dart';

void main() {
  runApp(MyApp());
}

//

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
