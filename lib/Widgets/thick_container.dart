import 'package:flutter/material.dart';
import 'package:untitled/Utilities/AppStyles.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key, this.isColor});
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 2.5, color: isColor == null ? Colors.white : Colors.blue)),
    );
  }
}
