import 'package:flutter/material.dart';
import 'package:untitled/Utilities/AppStyles.dart';
import 'package:untitled/Utilities/app_layout.dart';
import 'package:untitled/Widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.plane, this.isColor});
  final Map<String, dynamic> plane;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    print("The plane from ${plane['departure_time']} to ${plane['to']}");
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.86,
      //height: Applayout.getHeight(Getplatform.isAndroid==true? 167:166)
      height: 166,
      child: Container(
        //margin:  EdgeInsets.only(right: Applayout.getHeight(16)),
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* top part of the ticket */
            Container(
              decoration: BoxDecoration(
                //dont forget to remove the const modifier
                borderRadius: BorderRadius.only(
                    //topleft: Radius.circular(Applayout.getHeight(20))
                    topLeft: Radius.circular(20),
                    //topRight: Radius.circular(Applayout.getHeight(20))
                    topRight: Radius.circular(20)),
                //color: Color(0xFF526799)
                color: isColor == null ? Colors.deepPurple : Colors.white,
              ),
              //padding: const EdgeInsets.all(Applayout.getHeight(20))
              padding: const EdgeInsets.all(17),
              //color: Colors.deepPurple,
              child: Column(children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      plane['from']['code'],
                      style: isColor == null
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3.copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    ThickContainer(
                      isColor: true,
                    ),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        //height: Applayout.getHeight(20)
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext, BoxConstraints constraints) {
                            print("Width ${constraints.constrainWidth()}");
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade300,
                                        )),
                                      )),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.6,
                          child: Icon(
                            Icons.flight,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ])),
                    ThickContainer(
                      isColor: true,
                    ),
                    const Spacer(),
                    Text(
                      plane['to']['code'],
                      style: isColor == null
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      plane['from']['name'],
                      style: isColor == null
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                    ),
                    Text(plane['flying_time'],
                        style: isColor == null
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4
                                .copyWith(color: Colors.black)),
                    Text(plane['to']['name'],
                        style: isColor == null
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4)
                  ],
                ),
              ]),
            ),

            /* Bottom part of the ticket(top) */
            Container(
              color: isColor == null ? Styles.deepOrange : Colors.white,
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: isColor == null
                                  ? Colors.grey.shade300
                                  : Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 12).floor(),
                                  (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: isColor == null
                                                    ? Colors.white
                                                    : Colors.grey.shade300)),
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                    )
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 20 : 0),
                    bottomRight: Radius.circular(isColor == null ? 20 : 0)),
                //color: Color(0xFF526799)
                color: isColor == null ? Styles.deepOrange : Colors.white,
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 8, right: 15, bottom: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${plane['date']}",
                            style: isColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Date",
                            style: isColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            plane['departure_time'],
                            style: isColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Departure",
                            style: isColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${plane['number']}",
                            style: isColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Number",
                            style: isColor == null
                                ? Styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle3,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
