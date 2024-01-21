// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -500,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            alignment: Alignment.topCenter,
            // color: Colors.amber,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash_bg.png'),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(0, 255, 243, 233),
              Color.fromARGB(255, 255, 243, 233)
            ], stops: [
              0.1,
              1.0
            ], begin: Alignment(.75, -0.75), end: Alignment(0.25, .75)),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              actions: [Icon(Icons.question_mark)],
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Monumental Habits'.toUpperCase(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 87, 51, 83),
                      fontSize: 32,
                      fontFamily: 'Itim',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    elevation: MaterialStateProperty.all(0),
                                    padding: MaterialStateProperty.all<
                                            EdgeInsetsGeometry>(
                                        EdgeInsets.symmetric(vertical: 12))),
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/google_icon.png',
                                  width: 24,
                                ),
                                label: Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    elevation: MaterialStateProperty.all(0),
                                    padding: MaterialStateProperty.all<
                                            EdgeInsetsGeometry>(
                                        EdgeInsets.symmetric(vertical: 12))),
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/facebook_icon.png',
                                  width: 24,
                                ),
                                label: Text(
                                  'Continue with Facebook',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Login with email',)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
