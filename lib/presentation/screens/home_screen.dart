import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,

        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.navigate_before, color: Colors.white),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, color: Colors.white),
          ),
        ],
        
        title: Text('Book Tickets', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(child: Text('Hello World')),
    );
  }
}
