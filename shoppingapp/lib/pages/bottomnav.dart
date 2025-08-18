import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shoppingapp/pages/Order.dart';
import 'package:shoppingapp/pages/home.dart';
import 'package:shoppingapp/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  late Home HomePage;
  late Order order;
  late Profile profile;
  int CurrentTabIndex = 0;

  @override
  void initState() {
    HomePage = Home();
    order = Order();
    profile = Profile();
    pages = [HomePage, order, profile];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[CurrentTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            CurrentTabIndex = index;
          });
        },
        items: const [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.person_outlined, color: Colors.white),
        ],
      ),
    );
  }
}
