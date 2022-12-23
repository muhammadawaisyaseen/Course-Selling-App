import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/custom_listview.dart';
import '../widgets/progressbar_small_containers.dart';
import '../widgets/progressbar_small_containers.dart';
import '../widgets/search_notif_widget.dart';

List courses = [
  "java Script",
  "Design",
  "Angular",
  "firebase",
  "HTML",
  "CSS",
  "Animation",
  "Java Script",
  "Dart",
  "HTML",
  "CSS",
  "Java Script",
  "Angular",
  "Dart",
  "HTML",
  "CSS",
  "Java Script",
  "Animation",
];

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int currentPage = 0;
  int progSelectedIndex = 0;
  int progNumber = 20;
  double myValue = 0.1;
  int sliderPerValue = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   // toolbarHeight: 120,
        //   // flexibleSpace: ,
        //   elevation: 0,
        //   backgroundColor: Color(0xFF7fcae5),
        //   leading: CircleAvatar(
        //     backgroundColor: Color(0xFFcedfe0),
        //     radius: 30,
        //     backgroundImage: AssetImage("assets/images/awais.jpg"),
        //   ),
        //   actions: [
        //     IconButton(
        //       onPressed: () {},
        //       icon: CircularButton(icon: Icons.search),
        //       // iconSize: 50,
        //     ),
        //     IconButton(
        //       onPressed: () {},
        //       icon: CircularButton(icon: Icons.notifications),
        //     )
        //   ],
        // ),
        backgroundColor: const Color(0xFF7fcae5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xFFcedfe0),
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/awais.jpg"),
                  ),
                  Spacer(),
                  CircularButton(icon: Icons.search),
                  const SizedBox(
                    width: 16,
                  ),
                  CircularButton(icon: Icons.notifications),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  print('index :$index');
                  return HorizontalListview(
                    courseName: courses[index],
                    isSelected: selectedIndex == index ? true : false,
                    onFunction: () {
                      setState(() {
                        selectedIndex = index;
                      });
                      print('Selected index : $selectedIndex');
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Popular Courses",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    firstContainer(),
                    ///////////////////////////////////////////////////
                    secodContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: NavigationBar(
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.menu_book_rounded), label: "Course"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.heart), label: "wishlist"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.person), label: "Profile"),
              ],
              backgroundColor: Color(0xFFffffff),
              onDestinationSelected: (indexvalue) {
                setState(() {
                  currentPage = indexvalue;
                  // print(current_page);
                });
              },
              selectedIndex: currentPage,
            ),
          ),
        ),
      ),
    );
  }

  Widget secodContainer() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: 400,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("UI Design"),
                  Spacer(),
                  Text("$myValue %"),
                ],
              ),
            ),
            Spacer(),
            // Slider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: SliderTheme(
                data: const SliderThemeData(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                  trackHeight: 10,
                  activeTrackColor: Colors.green,
                  inactiveTickMarkColor: Colors.white,
                ),
                child: Slider(
                  value: myValue,
                  onChanged: (value) {
                    setState(() {
                      myValue = value;
                      // if (myValue == 0.1) {
                      //   sliderPerValue = 10;
                      // } else if (myValue == 0.2) {
                      //   sliderPerValue = 20;
                      // } else if (myValue == 0.3) {
                      //   sliderPerValue = 30;
                      // } else if (myValue == 0.4) {
                      //   sliderPerValue = 40;
                      // } else if (myValue == 0.5) {
                      //   sliderPerValue = 50;
                      // } else if (myValue == 0.6) {
                      //   sliderPerValue = 60;
                      // } else if (myValue == 0.7) {
                      //   sliderPerValue = 70;
                      // } else if (myValue == 0.8) {
                      //   sliderPerValue = 80;
                      // } else if (myValue == 0.9) {
                      //   sliderPerValue = 90;
                      // } else if (myValue == 1) {
                      //   sliderPerValue = 100;
                      // }
                    });
                  },
                  // divisions: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding firstContainer() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
            // color: Colors.white,
            gradient: const LinearGradient(
              colors: [
                Color(0xFFd8ffff),
                Color(0xFFfefdd9),
                Color(0xFFf9d3fe),
                Color(0xFFbafeff),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.05, 0.4, 0.65, 1],
            ),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
                bottom: 30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                        children: [
                          TextSpan(text: 'UI/UX'),
                          TextSpan(text: ' '),
                          TextSpan(
                              text: 'Design Course',
                              style: TextStyle(
                                color: Colors.black,
                              ))
                        ]),
                  ),
                  const Spacer(),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xFFffffff),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            Spacer(),
            // progress bar wala container
            Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                padding: EdgeInsets.all(30),
                width: 400,
                height: 180,
                decoration: BoxDecoration(
                    color: Color(0xFFf9f9f9),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Progress"),
                        Spacer(),
                        Text("$progNumber %"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProgressBarListview(
                            isSelected:
                                progSelectedIndex >= index ? true : false,
                            onFunction: () {
                              setState(() {
                                progSelectedIndex = index;
                                if (progSelectedIndex == 0) {
                                  progNumber = 20;
                                } else if (progSelectedIndex == 1) {
                                  progNumber = 40;
                                } else if (progSelectedIndex == 2) {
                                  progNumber = 60;
                                } else if (progSelectedIndex == 3) {
                                  progNumber = 80;
                                } else if (progSelectedIndex == 4) {
                                  progNumber = 100;
                                }
                              });

                              print("progress $progSelectedIndex");
                            },
                          );
                        },
                      ),
                    ),

                    const Spacer(),
                    // Time and date Row
                    Row(
                      children: const [
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 10,
                        ),
                        Text("6h 50min"),
                        Spacer(),
                        Icon(Icons.calendar_month_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text("26 Apr"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
