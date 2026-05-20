import 'package:flutter/material.dart';
import 'package:ticket_booking_app/config/themes/app_media.dart';
import 'package:ticket_booking_app/config/themes/app_styles.dart';
import 'package:ticket_booking_app/presentation/widgets/shared/double_text.dart';
import 'package:ticket_booking_app/presentation/widgets/shared/search_form.dart';
import 'package:ticket_booking_app/presentation/widgets/shared/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgColor,

      body: ListView(
        children: [
          Container(
            padding: .only(left: 20, right: 20, top: 40),
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

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),

                //* SearchBox
                SearchForm(),

                SizedBox(height: 40),

                DoubleText(bigText: 'Upcoming flights', smallText: 'View all'),

                SizedBox(height: 40),

                TicketView(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
