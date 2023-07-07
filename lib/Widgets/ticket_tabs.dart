import 'package:flutter/material.dart';

import '../Utilities/app_layout.dart';

class TicketTabs extends StatelessWidget {
  const TicketTabs(
      {super.key, required this.firstText, required this.secondText});
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
          padding: const EdgeInsets.all(11.5 - 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFF4F6FD)),
          child: Row(children: [
            Container(
              width: size.width * 0.45,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.white),
              child: Center(child: Text(firstText)),
            ),
            Container(
              width: size.width * 0.45,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                //color: Colors.white
              ),
              child: Center(child: Text(secondText)),
            ),
          ])),
    );
  }
}
