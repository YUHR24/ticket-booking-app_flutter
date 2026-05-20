import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: .only(topLeft: .circular(21), topRight: .circular(21)),
        ),
        // color: Colors.red,
        child: Center(child: Text('test hellow')),
      ),
    );
  }
}
