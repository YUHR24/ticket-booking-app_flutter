import 'package:flutter/material.dart';
import 'package:ticket_booking_app/config/themes/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;

  const DoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 20),

      child: Row(
        mainAxisAlignment: .spaceBetween,

        children: [
          Text(bigText, style: AppStyles.headLineStyle2),

          InkWell(
            onTap: () {},
            
            child: Text(

              smallText,
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
