import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/splash_bg.png"
            ),
            fit: BoxFit.fill,
        ),
      ),
      padding: const EdgeInsets.only(top: 120),
      // ignore: prefer_const_constructors
      child: Text(
        'WELCOME TO MONUMENTAL HABITS',
        textAlign: TextAlign.center,
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: const Color.fromARGB(255, 87, 51, 83),
          fontFamily: 'Itim',
          // Color.fromARGB(255, 27, 35, 126)
          decoration: TextDecoration.none,
          shadows: const [
            Shadow(
              color: Color.fromARGB(255, 254, 169, 0), // Adjust the outline color as desired
              offset: Offset(4.5, -4.5), // Adjust the offset for outline position
              blurRadius: 1.0, // Adjust the blur radius for outline thickness
            ),
          ],
        ),
        ),
    );
  }
}
