// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash_bg.png'),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: 0,
          bottom: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                Color.fromARGB(0, 255, 243, 233),
                Color.fromARGB(255, 255, 243, 233)
              ],
                begin: Alignment.topCenter, 
                end: Alignment.center
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              ClipOval(
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Color.fromARGB(96, 87, 51, 83),
                  child: Icon(
                    Icons.question_mark,
                    color: Color.fromARGB(255, 87, 51, 83),
                    size: 36,
                  ),
                ),
              ),
              SizedBox(width: 16,),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
                child: Text(
                  'Welcome to Monumental Habits'.toUpperCase(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 87, 51, 83),
                    fontSize: 32,
                    fontFamily: 'Itim',
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(255, 254, 169,
                            0), // Adjust the outline color as desired
                        offset: Offset(2.5,
                            -2.5), // Adjust the offset for outline position
                        blurRadius:
                            1.0, // Adjust the blur radius for outline thickness
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
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
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(vertical: 16))),
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/google_icon.png',
                                width: 24,
                              ),
                              label: Text(
                                'Continue with Google',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 87, 51, 83),
                                    fontWeight: FontWeight.bold),
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
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(vertical: 16))),
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/facebook_icon.png',
                                width: 24,
                              ),
                              label: Text(
                                'Continue with Facebook',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 87, 51, 83),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              //this container should start from the bottom
              Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Log in with email',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Divider(
                            color: Color.fromARGB(106, 254, 169, 0),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 246, 237),
                                prefixIcon: Icon(Icons.email_outlined),
                                prefixIconColor:
                                    Color.fromARGB(255, 254, 169, 0),
                                hintText: 'Jonathansmth@gmail.com',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 254, 169, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 246, 237),
                                prefixIcon: Icon(Icons.lock_outline),
                                suffixIcon: Row(
                                  mainAxisSize:
                                      MainAxisSize.min, // Ensures minimal width
                                  children: [
                                    Text(
                                      'Show',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 254, 169, 0)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(vertical: 16))),
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 87, 51, 83),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all<
                                              EdgeInsetsGeometry>(
                                          EdgeInsets.symmetric(vertical: 16))),
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(context, '/forgot_password');
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255, 87, 51, 83),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              TextButton(
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<
                                            EdgeInsetsGeometry>(
                                        EdgeInsets.symmetric(vertical: 16))),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, '/register');
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 87, 51, 83),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
