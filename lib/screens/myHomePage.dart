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

  int current_page = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  return HorizontalListview(
                    courseName: courses[index],
                    ontap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    isSelected: selectedIndex == index,
                  );
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
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
                  current_page = indexvalue;
                  // print(current_page);
                });
              },
              selectedIndex: current_page,
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
                children: const [
                  Text("UI Design"),
                  Spacer(),
                  Text("56%"),
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
                ),
                child: Slider(
                  value: 0.5,
                  onChanged: (value) {},
                  activeColor: Color(0xFF7fcae5),
                  inactiveColor: Color(0xFFf8f8f8),
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
                        // DefaultTextStyle.of(context).style,
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
                      children: const [
                        Text("Progress"),
                        Spacer(),
                        Text("45%"),
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
                          return ProgressBarListview();
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
