// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habits_ui/getstarted.dart';
import 'package:introduction_slider/introduction_slider.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
        items: [
          IntroductionSliderItem(
            logo: Column(
              children: [
                Text('BUILD MONUMENTAL HABITS',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Itim',
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 87, 51, 83),
                ),
                textAlign: TextAlign.center,
                ),
                Image.asset('assets/images/carousel_img1.png',
                ),
              ],
            ),
            title: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
                children: [
                  TextSpan(text: 'WE CAN ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                  TextSpan(text: 'HELP YOU ', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                  TextSpan(text: 'TO BE A BETTER VERSION OF ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                  TextSpan(text: 'YOURSELF', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                ],
            ),
            ),
            backgroundColor: Colors.white,
          ),
          IntroductionSliderItem(
            logo: Column(
              children: [
                Text('EASILY CREATE NEW HABITS',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Itim',
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 87, 51, 83),
                ),
                textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 44),
                  child: Image.asset('assets/images/carousel_img2.png',
                  ),
                ),
              ],
            ),
            title: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
                children: [
                  TextSpan(text: 'WE CAN ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                  TextSpan(text: 'HELP YOU ', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                  TextSpan(text: 'TO BE A BETTER VERSION OF ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                  TextSpan(text: 'YOURSELF', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                ],
            ),
            ),
            backgroundColor: Colors.white,
          ),
          IntroductionSliderItem(
            logo: Column(
              children: [
                Text('TRACK YOUR PROGESS',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Itim',
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 87, 51, 83),
                ),
                textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 68),
                  child: Image.asset('assets/images/carousel_img3.png',
                  ),
                ),
              ],
            ),
            title: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
                children: [
                  TextSpan(text: 'WE CAN ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                  TextSpan(text: 'HELP YOU ', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                  TextSpan(text: 'TO BE A BETTER VERSION OF ', style: TextStyle(color: Color.fromARGB(255, 87, 51, 83))),
                  TextSpan(text: 'YOURSELF', style: TextStyle(color: Color.fromARGB(255, 254, 169, 0))),
                ],
            ),
            ),
            backgroundColor: Colors.white,
          ),
          
        ],
        done: Done(
          child: Icon(Icons.done),
          home: GetStartedScreen(),
        ),
        next: Next(child: Icon(Icons.arrow_forward)),
        back: Back(child: Icon(Icons.arrow_back)),
        dotIndicator: DotIndicator(),
    );
  }
}