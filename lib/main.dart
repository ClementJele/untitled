import 'package:flutter/material.dart';
import 'package:untitled/Screens/Bottom_bar.dart';
import 'package:untitled/Screens/HomeScreen.dart';
import 'package:untitled/Utilities/AppStyles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Air Booking App',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}
