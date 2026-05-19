import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:ticket_booking_app/presentation/screens/home_screen.dart';

final logger = Logger();

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0; //* index of Screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    logger.d('value of index $index');
  }

  final appScreen = [
    HomeScreen(),
    Center(child: Text('SEARCH')),
    Center(child: Text('TICKET')),
    Center(child: Text('PROFILE')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: appScreen[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526400),

        // showSelectedLabels: false,
        onTap: _onItemTapped,

        currentIndex: _selectedIndex,

        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_24_regular),
            activeIcon: Icon(FluentIcons.home_24_filled),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentIcons.search_24_regular),
            activeIcon: Icon(FluentIcons.search_24_filled),
            label: 'Search',
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentIcons.ticket_horizontal_24_regular),
            activeIcon: Icon(FluentIcons.ticket_horizontal_24_filled),
            label: 'Tickets',
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentIcons.person_24_regular),
            activeIcon: Icon(FluentIcons.person_24_filled),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
