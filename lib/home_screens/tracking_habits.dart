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
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 6,
            margin: EdgeInsets.symmetric(horizontal: 16),
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
          // Text('Habits'),
          Row(
            children: [
              Text('Habits'),
              Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                      itemBuilder: (BuildContext context, int pos) {
                        return Row(children: [
                          ClipRect(
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text('Sun'),
                                ],
                              ),
                              
                            ),
                          )
                        ]);
                      },
                      separatorBuilder: (BuildContext context, int pos) {
                        return SizedBox(width: 8,);
                      },
                      itemCount: 3
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
