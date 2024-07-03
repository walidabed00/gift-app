import 'dart:ffi';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPage();
}

var page = "Home";
var budget = "Weekly";

class _CurrencyConverterPage extends State<CurrencyConverterPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Example: Using 50% width and 20% height
    final double buttonWidth = screenWidth * 0.5;
    final double buttonHeight = screenHeight * 0.2;

    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            height: screenHeight * 0.11,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        page = "Home";
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                            page == "Home"
                                ? 'assets/images/Home.png'
                                : 'assets/images/HomeInactive.png',
                          ),
                          width: 40,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: 'Ethos Nova Heavy',
                              fontSize: 11,
                              color: Color(
                                  page == "Home" ? 0XFFF4622E : 0XFF0D0D0D)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/Matcher.png',
                        ),
                        width: 40,
                      ),
                      Text(
                        'Matcher',
                        style: TextStyle(
                            fontFamily: 'Ethos Nova Heavy',
                            fontSize: 11,
                            color: Color(0XFF0D0D0D)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        page = "Friends";
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                            page == "Friends"
                                ? 'assets/images/FriendsActive.png'
                                : 'assets/images/Friends.png',
                          ),
                          width: 40,
                        ),
                        Text(
                          'Friends',
                          style: TextStyle(
                              fontFamily: 'Ethos Nova Heavy',
                              fontSize: 11,
                              color: Color(
                                  page == "Friends" ? 0XFFF4622E : 0XFF0D0D0D)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/Events.png',
                        ),
                        width: 40,
                      ),
                      Text(
                        'Events',
                        style: TextStyle(
                            fontFamily: 'Ethos Nova Heavy',
                            fontSize: 11,
                            color: Color(0XFF0D0D0D)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/Profile.png',
                        ),
                        width: 40,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontFamily: 'Ethos Nova Heavy',
                            fontSize: 11,
                            color: Color(0XFF0D0D0D)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              width: double.infinity,
              height: screenHeight * 0.49,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/images/logo.svg'),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Hello',
                                        style: TextStyle(
                                            fontSize: 32,
                                            color: Color(0XFF2C2C2C))),
                                    SizedBox(width: 8),
                                    SvgPicture.asset('assets/images/wave.svg'),
                                    SizedBox(width: 8),
                                    Text(
                                      'Justin',
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0XFF2C2C2C)),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/male.png'),
                                      width: 35,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Do Not Forget That',
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0XFF2C2C2C)),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Aisling's",
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0XFFF4622E)),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/female.png'),
                                      width: 35,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Birthday",
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0XFF2C2C2C)),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Is In",
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0XFF2C2C2C)),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "21 Da",
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0XFF2C2C2C),
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                      'y',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Color(0XFF2C2C2C),
                                      ),
                                    ),
                                    Text(
                                      's',
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0XFF2C2C2C),
                                          decoration: TextDecoration.underline),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  iconAlignment: IconAlignment.start,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/gift.png'),
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Send A Gift',
                                        style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontFamily: 'Ethos Nova Heavy',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0XFFF4622E)),
                                      shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.fromLTRB(0, 3, 20, 3)),
                                      elevation: WidgetStatePropertyAll(0)),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              SizedBox(
                                height: 30,
                                child: Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0XFF2C2C2C).withOpacity(0.08),
                                      spreadRadius: 1,
                                      blurRadius: 22,
                                      offset: Offset(0, -1),
                                    )
                                  ]),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    iconAlignment: IconAlignment.start,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/images/charts.png'),
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Get 20 Giftdrop Points',
                                          style: TextStyle(
                                              color: Color(0XFF2C2C2C),
                                              fontFamily: 'Ethos Nova Heavy',
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    style: ButtonStyle(
                                        elevation: WidgetStatePropertyAll(0),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        padding: WidgetStatePropertyAll(
                                            EdgeInsets.fromLTRB(15, 0, 20, 0))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: screenHeight * 0.10,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: screenWidth * 0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'You have ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: -0.7,
                                              fontFamily: 'Ethos Nova Heavy',
                                              color: Color(0XFF2C2C2C)),
                                        ),
                                        Container(
                                            height: 22,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Color(0XFFF4622E),
                                                      width: 1.5)),
                                            ),
                                            child: Text(
                                              '2Gifts',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  letterSpacing: -0.7,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: Color(0XFFF4622E),
                                                  fontFamily:
                                                      'Ethos Nova Heavy',
                                                  decorationColor:
                                                      Color(0XFFF4622E),
                                                  decorationThickness: 2),
                                            )),
                                        Text(
                                          ' Scheduled to',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Ethos Nova Heavy',
                                              letterSpacing: -0.7,
                                              color: Color(0XFF2C2C2C)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'be sent this month',
                                      style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: -0.7,
                                          fontFamily: 'Ethos Nova Heavy',
                                          color: Color(0XFF2C2C2C)),
                                    )
                                  ],
                                ),
                              ),
                              Image(
                                image: AssetImage('assets/images/girls.png'),
                                width: 80,
                              )
                            ]),
                      ),
                    ))),
            SizedBox(
                width: double.infinity,
                height: screenHeight * 0.24,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/money.png'),
                                    width: 35,
                                  ),
                                  Container(
                                    width: screenWidth * 0.4,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0XFF2C2C2C),
                                            width: 1.5),
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0XFF2C2C2C)),
                                    child: SizedBox(
                                        width: screenWidth * 0.3,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            budget == 'Weekly'
                                                ? Container(
                                                    width: screenWidth * 0.2,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0XFFFFFFFF),
                                                            width: 1.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color:
                                                            Color(0XFFFFFFFF)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(0, 0, 0, 0),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            budget = 'Weekly';
                                                          });
                                                        },
                                                        child: Text(
                                                          'Weekly',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              height: 0,
                                                              fontFamily:
                                                                  'Ethos Nova Heavy',
                                                              letterSpacing:
                                                                  -0.7,
                                                              color: Color(
                                                                  0XFF2C2C2C)),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(15, 0, 0, 0),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          budget = 'Weekly';
                                                        });
                                                      },
                                                      child: Text(
                                                        'Weekly',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            height: 0,
                                                            fontFamily:
                                                                'Ethos Nova Heavy',
                                                            letterSpacing: -0.7,
                                                            color: Color(
                                                                0XFFFFFFFF)),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                            budget == 'Monthly'
                                                ? Container(
                                                    width: screenWidth * 0.2,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0XFFFFFFFF),
                                                            width: 1.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color:
                                                            Color(0XFFFFFFFF)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(0, 0, 0, 0),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            budget = 'Monthly';
                                                          });
                                                        },
                                                        child: Text(
                                                          'Monthly',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              height: 0,
                                                              fontFamily:
                                                                  'Ethos Nova Heavy',
                                                              letterSpacing:
                                                                  -0.7,
                                                              color: Color(
                                                                  0XFF2C2C2C)),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 0, 15, 0),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          budget = 'Monthly';
                                                        });
                                                      },
                                                      child: Text(
                                                        'Monthly',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Ethos Nova Heavy',
                                                            letterSpacing: -0.7,
                                                            color: Color(
                                                                0XFFFFFFFF)),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  )
                                          ],
                                        )),
                                  ),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.values[0],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Your Budget',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Ethos Nova Heavy'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.values[0],
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'You Are A Gifter',
                                              style: TextStyle(fontSize: 22),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'By  Nature',
                                                  style:
                                                      TextStyle(fontSize: 22),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Image(
                                                  image: AssetImage(
                                                      'assets/images/smilyFace.png'),
                                                  width: 25,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  budget == 'Weekly' ? "\$53" : '\$200',
                                  style: TextStyle(
                                      fontSize: 70,
                                      letterSpacing: -0.3,
                                      color: Color(0XFF6BF4C1)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )))
          ]),
        ));
  }
}
