import 'package:flutter/material.dart';

Color primary = Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = Color(0xFFEEEDF2);
  static Color textColor = Color(0xFF3B3B3B);

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: .bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: .bold,
    color: textColor,
  );

  static TextStyle headLineStyle3 = TextStyle(fontSize: 17, fontWeight: .w500);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: .w500,
    color: textColor,
  );
}
