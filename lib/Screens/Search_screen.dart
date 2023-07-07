import 'package:flutter/material.dart';
import 'package:untitled/Utilities/AppStyles.dart';
import 'package:untitled/Widgets/TextFieldIcon.dart';
import 'package:untitled/Widgets/UpcomingFlightsWidget.dart';
import 'package:untitled/Widgets/ticket_tabs.dart';

import '../Utilities/app_layout.dart';

class SeachScreen extends StatelessWidget {
  const SeachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.whiteBackground,
      body: SafeArea(
        child: ListView(
          //padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            //SizedBox(height: AppLayout.getHeight(40))
            const SizedBox(
              height: 40,
            ),
            Text(
              "What are\nyou looking for?",
              //fontsize: getwidth(35)
              style: Styles.headlineStyle1
                  .copyWith(fontSize: 35, color: Styles.blackbackground),
            ),
            const SizedBox(
              height: 20,
            ),
            const TicketTabs(
                firstText: "Airline Tickets", secondText: "Hotels"),
            const SizedBox(
              height: 30,
            ),
            const AppIconData(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            const SizedBox(
              height: 25,
            ),
            const AppIconData(icon: Icons.flight_land_rounded, text: "Arrival"),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 25, 4, 161)),
                child: Center(
                  child: Text(
                    "Find Tickets",
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            FlightsInfo(BigText: "Upcoming Flights", SmallText: "View All"),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 10,
                              spreadRadius: 9)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    height: 407,
                    width: 150,
                    margin: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                    child: Column(
                      children: [
                        Container(
                          //do the applayout thing
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(255, 161, 150, 170)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "25% discount on this flight, don't miss it",
                          style: Styles.headlineStyle1.copyWith(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            width: size.width * 0.45,
                            height: 201,
                            decoration: BoxDecoration(
                                color: Color(0xFF3AB8B8),
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                              children: [
                                Text("20% Discount Survey",
                                    style: Styles.headlineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Styles.blackbackground,
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Answer the survey to increase chances of getting a discount",
                                  style: Styles.headlineStyle3
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          Positioned(
                              right: -55,
                              top: -70,
                              child: Container(
                                width: size.width * 0.5,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  //Color(0xFF3AB8B8),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 9,
                                      color: Color.fromARGB(255, 28, 151, 128)),
                                  //borderRadius: BorderRadius.circular(18)
                                ),
                                //child: ,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        width: size.width * 0.45,
                        height: 195,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 134, 240),
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          children: [
                            Text("ENJOY THE FLIGHT",
                                style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: 'Love ',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red)),
                              TextSpan(
                                  text: 'Love ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 54, 57, 244))),
                              TextSpan(
                                  text: 'Love ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 121, 235, 165))),
                              TextSpan(
                                  text: 'Love ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 204, 225, 111))),
                            ]))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 10,
                              spreadRadius: 9)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    height: 400,
                    width: 150,
                    margin: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                    child: Column(
                      children: [
                        Container(
                          //do the applayout thing
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(255, 161, 150, 170)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "25% discount on this flight, don't miss it",
                          style: Styles.headlineStyle1.copyWith(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Color.fromARGB(255, 25, 4, 161)
