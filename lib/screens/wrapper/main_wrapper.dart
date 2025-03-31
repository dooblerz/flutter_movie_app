import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screens/Profile/profile_screen.dart';
import 'package:movie_app/screens/favorites/favorites_screen.dart';
import 'package:movie_app/screens/home/home_screen.dart';
import 'package:movie_app/screens/notifications/notifi_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    FavoritesScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.grey.shade200,
      backgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 300),
      index: selectedIndex,
      onTap: onItemTapped,
      items: List.generate(
        4,
        (index) => Icon(
          [
            Icons.movie,
            Icons.favorite,
            Icons.notifications,
            Icons.person,
          ][index],
          size: 30,
          color: selectedIndex == index ? Colors.blue : Colors.black,
        ),
      ),
    );
  }
}
