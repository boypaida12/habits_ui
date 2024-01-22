import 'package:flutter/material.dart';
import 'package:habits_ui/auth_screens/login.dart';
import 'package:habits_ui/auth_screens/register.dart';
import 'package:habits_ui/intro_screen.dart';
import 'package:habits_ui/splash_screen.dart';
// import 'package:habits_ui/getstarted.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const IntroScreen(),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
      },
    );
  }
}

