// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TrackingHabits extends StatefulWidget {
  const TrackingHabits({super.key});

  @override
  State<TrackingHabits> createState() => _TrackingHabitsState();
}

class _TrackingHabitsState extends State<TrackingHabits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 243, 233),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 243, 233),
        title: Text(
          'Homepage',
          textAlign: TextAlign.center,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: ClipOval(
              child: Image.asset('assets/images/emily.jpeg'),
            ),
          ),
          // SizedBox(width: 16,)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Image.asset('assets/images/home_icon.png'), label: 'Home'),
        BottomNavigationBarItem(icon: Image.asset('assets/images/courses_icon.png'), label: 'Courses'),
        BottomNavigationBarItem(icon: Image.asset('assets/images/community_icon.png'), label: 'Community'),
        BottomNavigationBarItem(icon: Image.asset('assets/images/setting_icon.png'), label: 'Settings'),
      ]),
      drawer: Drawer(),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/home_bg.png')
                , fit: BoxFit.cover),
              ),
            )
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 16, bottom: 16, right: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'We first make our habits, and then our habits makes us.'
                                      .toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Itim',
                                  ),
                                ),
                                Text(
                                  '-ANONYMOUS',
                                  style: TextStyle(),
                                  // textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(flex: 1, child: Spacer()),
                      ],
                    ),
                    Positioned(
                      top: -38,
                      right: -30,
                      child: Image.asset('assets/images/quote_img.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Text(
                            'Habits'.toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 87, 51, 83),
                              letterSpacing: -1.05,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding: EdgeInsets.only(left: 12),
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 2,
                              );
                            },
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                width: 58,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'SUN',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      '18',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontFamily: 'Manrope',
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 87, 51, 83),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              // Read a book Section
              Container(
                margin: EdgeInsets.only(top: 16),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 70,
                          margin: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Read A Book',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 87, 51, 83),
                                letterSpacing: -1.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2,),
                      Expanded(
                        flex: 9,
                        child: Container(
                          padding: EdgeInsets.only(left: 12),
                          color: Colors.white,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 2,
                              );
                            },
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 255, 243, 233),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.amber[800],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Exercise section
              Container(
                margin: EdgeInsets.only(top: 16),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 70,
                          margin: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Exercise',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 87, 51, 83),
                                letterSpacing: -1.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2,),
                      Expanded(
                        flex: 9,
                        child: Container(
                          padding: EdgeInsets.only(left: 12),
                          color: Colors.white,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 2,
                              );
                            },
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 255, 243, 233),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.red[400],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Exercise section
              Container(
                margin: EdgeInsets.only(top: 16),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 70,
                          margin: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Wake up early',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 87, 51, 83),
                                letterSpacing: -1.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2,),
                      Expanded(
                        flex: 9,
                        child: Container(
                          padding: EdgeInsets.only(left: 12),
                          color: Colors.white,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 2,
                              );
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 255, 243, 233),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 70,
                          margin: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Walk Dog',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 87, 51, 83),
                                letterSpacing: -1.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2,),
                      Expanded(
                        flex: 9,
                        child: Container(
                          padding: EdgeInsets.only(left: 12),
                          color: Colors.white,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 2,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(21, 105, 27, 154),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.purple[800],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
             
            ],
          ),
          
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.amber[700],
          shape: CircleBorder(),
          onPressed: (){},
          child: Image.asset('assets/images/plus_floating.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
