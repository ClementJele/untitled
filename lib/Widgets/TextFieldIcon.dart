import 'package:flutter/material.dart';

import '../Utilities/AppStyles.dart';

class AppIconData extends StatelessWidget {
  final IconData icon;
  final String text;
  final double? height;
  final Color? color;
  const AppIconData(
      {super.key,
      required this.icon,
      required this.text,
      this.height,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: Styles.headlineStyle3
                .copyWith(fontSize: 17, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
