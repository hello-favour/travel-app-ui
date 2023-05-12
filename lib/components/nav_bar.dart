import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app_ui/screens/home_screen.dart';
import 'package:travel_app_ui/screens/notification_screen.dart';
import 'package:travel_app_ui/screens/place_screen.dart';
import 'package:travel_app_ui/screens/search_screen.dart';
import 'package:travel_app_ui/screens/setting_screen.dart';
import 'package:travel_app_ui/themes/app_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const SettingScreen(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: AppColors.primaryColors,
        backgroundColor: AppColors.appWhite,
        iconSize: 30,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedFontSize: 16,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}
