import 'package:flutter/material.dart';
import 'package:mps_app/features/onboarding/onboarding_page.dart';
import 'package:mps_app/features/sign_up/sign_up_page.dart';
import 'package:mps_app/features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(
      ),
    );
  }
}