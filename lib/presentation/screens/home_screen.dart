import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/config/themes/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          onPressed: () {},
          icon: Icon(FluentIcons.star_24_filled, color: Colors.white),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FluentIcons.folder_24_filled, color: Colors.white),
          ),
        ],

        title: Text('Book Tickets', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            // color: Colors.blue,
            padding: .symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text('Good morning', style: AppStyles.headLineStyle3),

                        SizedBox(height: 6),

                        Text('Book Tickets', style: AppStyles.headLineStyle1),
                      ],
                    ),

                    // Text('Imageee'),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: .circular(10),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [Text('ICON'), Text('HINTEXT')],
                ),

                Text('Buscador'),
              ],
            ),
          ),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
