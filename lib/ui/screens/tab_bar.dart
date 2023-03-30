import 'package:cypto_app/ui/screens/portfolio_screen.dart';
import 'package:cypto_app/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomeScreen(),
        PortfolioScreen(),
        ProfileScreen(),
      ][_currentIndex],

      ///
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        elevation: 1,
        iconSize: 50,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              colorFilter: getColor(0),
              height: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Portfolio',
            icon: SvgPicture.asset(
              'assets/images/portfolio.svg',
              height: 20,
              colorFilter: getColor(1),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              height: 20,
              colorFilter: getColor(2),
            ),
          ),
        ],
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
      ),
    );
  }

  ColorFilter? getColor(int index) {
    return _currentIndex == index
        ? ColorFilter.mode(Theme.of(context).primaryColor, BlendMode.srcIn)
        : null;
  }
}
