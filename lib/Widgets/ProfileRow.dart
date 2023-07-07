import 'package:flutter/material.dart';

import '../Utilities/AppStyles.dart';

class ProfileRow extends StatelessWidget {
  final String Category;
  final String Description;
  const ProfileRow(
      {super.key, required this.Category, required this.Description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Category,
            style: Styles.headlineStyle3.copyWith(color: Colors.white)),
        Text(Description,
            style: Styles.headlineStyle3.copyWith(color: Colors.white))
      ],
    );
  }
}
