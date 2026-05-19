import 'package:flutter/material.dart';
import 'package:ticket_booking_app/presentation/widgets/shared/bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Tickets',
      home: BottomNavBar(),
    );
  }
}
