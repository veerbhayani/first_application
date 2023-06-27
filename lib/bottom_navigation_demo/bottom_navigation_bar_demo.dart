import 'package:first_application/bottom_navigation_demo/home_navigation.dart';
import 'package:first_application/bottom_navigation_demo/library_navigation.dart';
import 'package:first_application/bottom_navigation_demo/shorts_navigation.dart';
import 'package:first_application/bottom_navigation_demo/subscription_navigation.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  const BottomNavigationBarDemo({super.key});

  @override
  State<BottomNavigationBarDemo> createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  List<Map> navigationData = [
    {
      'title': 'home',
      'icon': Icons.home,
    },
    {
      'title': 'shorts',
      'icon': Icons.video_camera_back_outlined,
    },
    {
      'title': 'subscription',
      'icon': Icons.subscriptions,
    },
    {
      'title': 'library',
      'icon': Icons.library_books,
    },
  ];

  List<Widget> myScreens = [
    const HomeNavigation(),
    const ShortsNavigation(),
    const SubscriptionNavigation(),
    const LibraryNavigation(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: List.generate(
          navigationData.length,
          (index) => BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(
              navigationData[index]['icon'],
            ),
            label: navigationData[index]['title'],
          ),
        ),
      ),
    );
  }
}
