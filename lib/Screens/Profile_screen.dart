//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/Utilities/AppStyles.dart';
import 'package:untitled/Widgets/ProfileRow.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.whiteBackground,
      body: SafeArea(
        child: ListView(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.whiteBackground),
            child:
                //Row container with the initials to use the padding benefits
                Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clement Jele",
                    style: Styles.headlineStyle1.copyWith(color: Colors.black),
                  ),

                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 68, 115, 216)),
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Color.fromARGB(255, 147, 116, 240),
                  //   child: Container(
                  //     margin: EdgeInsets.symmetric(vertical: 10, horizontal: 9),
                  //     color: Color.fromARGB(255, 174, 167, 188),
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(10),
                  //       // child: Image.asset(
                  //       //   'Assets/67D16603-D371-45D8-B5C6-3EBF2F8A5FE9_1_102_a.jpeg',
                  //       //   fit: BoxFit.cover,
                  //       // ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(12),
                width: 450,
                height: 580,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 78, 67, 109),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const ProfileRow(
                        Category: "Total Distance:", Description: "8000KM"),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileRow(Category: "Total tickets: ", Description: "35"),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ProfileRow(
                        Category: "Class: ", Description: "Commercial"),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Personal Information",
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ProfileRow(
                        Category: "Email: ",
                        Description: "Clemyjele@gmail.com"),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileRow(
                        Category: "Phone No: ", Description: "0662288267"),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileRow(Category: "ID:  ", Description: "0208115986084"),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileRow(Category: "Gender: ", Description: "Male"),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileRow(
                        Category: "TransGender? : ",
                        Description: "There is no option for such."),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
