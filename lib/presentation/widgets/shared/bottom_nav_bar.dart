import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0; // índice actual

    return Scaffold(
      appBar: AppBar(title: Text('My tickets'), centerTitle: true),

      body: Center(child: Text('Ticket info')),

      bottomNavigationBar: BottomNavigationBar(
        // type: .fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526400),
        showSelectedLabels: false,

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
