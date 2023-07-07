import 'package:flutter/material.dart';
import 'package:untitled/Utilities/AppStyles.dart';
import 'package:untitled/Utilities/app_layout.dart';

/* go to pabspec and download the dependency get: ^whatever version*/

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    print("hotel at ${hotel['place']} price is ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
      width: size.width * 0.41,
      margin: EdgeInsets.symmetric(horizontal: 7),
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 2, 23, 81),
        // boxShadow: [
        //   BoxShadow(color: Colors.black, blurRadius: 0.0, spreadRadius: 1)
        // ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 180,
              //width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'Assets/67D16603-D371-45D8-B5C6-3EBF2F8A5FE9_1_102_a.jpeg',
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${hotel['destination']}",
                    style: Styles.headlineStyle4.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "${hotel['place']}",
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        style: Styles.headlineStyle2
                            .copyWith(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "R${hotel['price']}/night",
                    softWrap: true,
                    style: Styles.headlineStyle2
                        .copyWith(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
