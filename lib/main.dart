import 'package:flutter/material.dart';
import 'package:justduit/screens/auth/signin_screen.dart';
import 'package:justduit/screens/auth/signup_screen.dart';
import 'package:justduit/screens/home/home_screen.dart';
import 'package:justduit/screens/landing/onboarding_screen.dart';
import 'package:justduit/themes/theme.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeText.lightTheme();
    return MaterialApp(
      title: 'JustDuit',
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnBoardingScreen(),
        
        '/SignUp':(context) => const SignUpScreen(),
        '/SignIn':(context) => const SignInScreen(),

        '/Home':(context) => const HomeScreen()
      }
    );
  }
}