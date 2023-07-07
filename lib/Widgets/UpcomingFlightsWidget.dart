import 'package:flutter/material.dart';

import '../Utilities/AppStyles.dart';

class FlightsInfo extends StatelessWidget {
  final String BigText;
  final String SmallText;
  const FlightsInfo(
      {super.key, required this.BigText, required this.SmallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          BigText,
          style: Styles.headlineStyle1,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            SmallText,
            style: Styles.headlineStyle3.copyWith(color: Colors.blueAccent),
          ),
        )
      ],
    );
  }
}
