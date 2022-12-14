import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'SFProText',
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.orange,
          ),),
      home: const OnboardingScreen(),
    );
  }
}
