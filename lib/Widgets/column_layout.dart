import 'package:flutter/material.dart';

import '../Utilities/AppStyles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondtext;
  final CrossAxisAlignment alignment;
  const ColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondtext,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          firstText,
          style: Styles.headlineStyle3,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          secondtext,
          style: Styles.headlineStyle3.copyWith(color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
