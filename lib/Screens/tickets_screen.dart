import 'package:flutter/material.dart';
import 'package:untitled/Screens/ticket_view.dart';
import 'package:untitled/Utilities/AppStyles.dart';
import 'package:untitled/Utilities/app_info_list.dart';
import 'package:untitled/Widgets/column_layout.dart';
import 'package:untitled/Widgets/layout_builder.dart';
import 'package:untitled/Widgets/ticket_tabs.dart';

import '../Utilities/app_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.whiteBackground,
      body: Stack(children: [
        SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Tickets",
                    style: Styles.headlineStyle1,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TicketTabs(firstText: "Upcoming", secondText: "Previous"),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(
                  isColor: true,
                  plane: ticketList[0],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        ColumnLayout(
                          firstText: "Flutter DB",
                          secondtext: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: "2456376473",
                          secondtext: "Passport",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const LayoutBuilderWidget(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        ColumnLayout(
                          firstText: "0055 444 77147",
                          secondtext: "number of E-tickets",
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: "B2SG28",
                          secondtext: "Booking code",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const LayoutBuilderWidget(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        ColumnLayout(
                          firstText: "VISA****8786",
                          secondtext: "Payment Method",
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: "R1450.00",
                          secondtext: "Price",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              /* barcode */
              //install a package in pubspec barcode_widget ^2.0.2

              /* BarcodeWidget(
                barcode: barcode.code128(),
                data: 'https://github.com/martinovovo,
                drawText: false,
                color: Styles.textcolor,
                width: double.infinity,
                height: 70
              ) */
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    color: Colors.deepPurpleAccent,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 75,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
