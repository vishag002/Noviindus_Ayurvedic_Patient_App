import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.push("/home");
              },
              child: Text("tap here for home screen"),
            ),
            ElevatedButton(
              onPressed: () {
                context.push("/login");
              },
              child: Text("tap here login screen"),
            ),
          ],
        ),
      ),
    );
  }
}
