import 'package:flutter/material.dart';

class ExtraScreen extends StatelessWidget {
  const ExtraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Text(
            "TESTING\nFUNCTIONALITY.\nGOOD JOB\nCLEMENT\nWHEN YOU ARRIVE TRY\n"
            "DOING THE MEDICINE APPLICATION",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                overflow: TextOverflow.ellipsis),
          ),
        ),
      ),
    );
  }
}
