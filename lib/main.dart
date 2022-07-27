import 'package:angrybird/constant/routes.dart';
import 'package:angrybird/screens/home_screen.dart';
import 'package:angrybird/screens/signin_screen.dart';
import 'package:angrybird/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(scaffoldBackgroundColor: AppColors.cardDark),
      home: const SignInScreen(),
      routes: {
        signupRoute: (context) => const SignupScreen(),
        signinRoute: (context) => const SignInScreen(),
        homeRoute: (context) => const HomeScreen(),
      },
    );
  }
}
