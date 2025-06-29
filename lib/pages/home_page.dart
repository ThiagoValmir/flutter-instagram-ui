import 'package:flutter_instagram_ui/pages/account.dart';
import 'package:flutter_instagram_ui/pages/home.dart';
import 'package:flutter_instagram_ui/pages/reels.dart';
import 'package:flutter_instagram_ui/pages/search.dart';
import 'package:flutter_instagram_ui/pages/shop.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Navigate around the app using a BottomNavigationBar
  // This is the index of the currently selected item in the BottomNavigationBar
  int _selectedIndex = 0;

  // This function is called when an item in the BottomNavigationBar is tapped
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Different pages can be displayed based on the selected index
  final List<Widget> _children = [
    UserHome(),
    UserSeach(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _navigateBottomNavBar,
          fixedColor: Colors.grey[800],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ]),
    );
  }
}
