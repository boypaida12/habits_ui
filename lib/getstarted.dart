// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'JOIN OUR SUPPORTIVE COMMUNITY',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Itim',
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 87, 51, 83),
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 487,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/carousel_img4.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 254, 169, 0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 16)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  }, 
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 51, 83),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
