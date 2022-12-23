import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'course_page.dart';
import 'myHomePage.dart';
import 'profile_page.dart';
import 'wishlist_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPage = 0;
  List pages = [
    HomeScreen(),
    CourseScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7fcae5),
      body: pages[currentPage],
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
              });
            },
            selectedIndex: currentPage,
          ),
        ),
      ),
    );
  }
}
