import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ticket_booking_app/config/themes/app_styles.dart';

final logger = Logger();

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    logger.d(size);

    return SizedBox(
      width: size.width * 0.85,
      height: 179,

      child: Container(
        margin: .only(right: 16),
        padding: .all(16),

        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: .only(topLeft: .circular(21), topRight: .circular(21)),
        ),

        child: Column(
          children: [

            Row(
              // mainAxisAlignment: .spaceBetween,

              children: [

                Text(
                  'NYC',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),

                Expanded(child: Container()),

                Text(
                  'NYC',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
