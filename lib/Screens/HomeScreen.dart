import 'package:flutter/material.dart';
import 'package:untitled/Screens/Hotels_screen.dart';
import 'package:untitled/Screens/ticket_view.dart';
import 'package:untitled/Utilities/AppStyles.dart';
import 'package:untitled/Utilities/app_info_list.dart';
import 'package:untitled/Widgets/UpcomingFlightsWidget.dart';
/* go to pubspec.yaml and under dependencies install gap: ^2.0.0 */

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
// student : 223080798
// Sechaba04nkosi?
//https://google.qualtrics.com/jfe/form/SV_4TKhBYKWMAacbu6?Source=VSCode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.whiteBackground,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              //margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.only(left: 18, right: 13),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headlineStyle3,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Book Tickets",
                            style: Styles.headlineStyle1,
                          )
                        ],
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        // ignore: sort_child_properties_last
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'Assets/67D16603-D371-45D8-B5C6-3EBF2F8A5FE9_1_102_a.jpeg',
                              fit: BoxFit.contain,
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      )
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //       color: Colors.black,
                      //       borderRadius: BorderRadius.circular(15),

                      //       /** */

                      //       image: const DecorationImage(
                      //           fit: BoxFit.cover,
                      //           image: AssetImage(
                      //               "Assets/Screenshot 2023-02-01 at 23.48.34 copy.PNG"))),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF4F6FD)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_outlined,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headlineStyle4,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const FlightsInfo(
                      BigText: "Upcoming Flights", SmallText: "View all"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: ticketList
                    .map((planeIndex) => TicketView(plane: planeIndex))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 18, right: 13),
              child:
                  const FlightsInfo(BigText: "Hotels", SmallText: "View all"),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList
                    .map((hotelIndex) => HotelScreen(hotel: hotelIndex))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
