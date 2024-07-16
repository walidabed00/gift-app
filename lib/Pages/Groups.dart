import 'package:auto_size_text/auto_size_text.dart';
import 'package:currency_converter/Pages/Friends.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            // SliverAppBar or similar persistent header goes here
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.3,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
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
                              SvgPicture.asset('assets/images/logo.svg',
                                  width: screenWidth * 0.13),
                              SizedBox(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.42,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: screenWidth * 0.08,
                                            height: screenHeight * 0.03,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        28, 0, 0, 0),
                                                    spreadRadius: 1,
                                                    blurRadius: 30,
                                                  )
                                                ]),
                                            child: AutoSizeText(
                                              '12',
                                              style: TextStyle(
                                                  color: Color(0XFF2C2C2C),
                                                  fontSize: screenWidth * 0.03),
                                            ),
                                          ),
                                         
                                          TextButton(
                                            onPressed: () {
                                               Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Friends()));
                                            },
                                            child: Text(
                                              'Friends',
                                              style: TextStyle(
                                                  fontSize: screenWidth * 0.08,
                                                  color: Color.fromARGB(
                                                      80, 44, 44, 44)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.4,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: screenWidth * 0.08,
                                            height: screenHeight * 0.03,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        23, 0, 0, 0),
                                                    spreadRadius: 1,
                                                    blurRadius: 30,
                                                  )
                                                ]),
                                            child: AutoSizeText(
                                              '12',
                                              style: TextStyle(
                                                  color: Color(0XFF2C2C2C),
                                                  fontSize: screenWidth * 0.03),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Groups()));
                                            },
                                            child: Text(
                                              'Groups',
                                              style: TextStyle(
                                                  fontSize: screenWidth * 0.08,
                                                  color: Color(0XFF2C2C2C)),
                                              textAlign: TextAlign.start,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // SliverPersistentHeader or similar goes here
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                minHeight: screenHeight * 0.06,
                maxHeight: screenHeight * 0.06,
                child: Container(
                  color: Color(0XFFFFF6E9),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.5,
                          height: screenHeight * 0.08,
                          child: SearchBar(
                            hintText: 'Search',
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            elevation: MaterialStateProperty.all(0),
                            hintStyle: MaterialStateProperty.all(TextStyle(
                              color: Color.fromARGB(80, 44, 44, 44),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.42,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/filtration1.png'),
                                width: screenWidth * 0.1,
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                height: screenHeight * 0.06,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        size: screenWidth * 0.04,
                                      ),
                                      Text(
                                        'New Group',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // SliverList or similar goes here
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // Your list items or cards wrapped in SliverList
                  buildGroupCard(screenWidth, screenHeight),
                  buildGroupCard(screenWidth, screenHeight),
                   buildGroupCard(screenWidth, screenHeight),
                    buildGroupCard(screenWidth, screenHeight),
                     buildGroupCard(screenWidth, screenHeight),
                  // Add more as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGroupCard(double screenWidth, double screenHeight) {
    return SizedBox(
      height: screenHeight * 0.3,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/female2.png'),
                          width: screenWidth * 0.15,
                        ),
                        Container(
                          transform: Matrix4.translationValues(-25, 0, 0),
                          color: Colors.transparent,
                          child: Image(
                            image: AssetImage('assets/images/female3.png'),
                            width: screenWidth * 0.15,
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(-50, 0, 0),
                          child: Image(
                            image: AssetImage('assets/images/male2.png'),
                            width: screenWidth * 0.15,
                          ),
                        ),
                      ],
                    ),
                    Image(
                      image: AssetImage('assets/images/points.png'),
                      width: screenWidth * 0.07,
                    ),
                  ],
                ),
                AutoSizeText(
                  '13 Active Members (5)',
                  style: TextStyle(
                    color: Color(0XFF2C2C2C),
                    fontFamily: 'Ethos Nova Heavy',
                    letterSpacing: -0.8,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Co-Workers',
                      style: TextStyle(
                        color: Color(0XFF2C2C2C),
                        fontFamily: 'Bree Serif',
                        letterSpacing: -0.8,
                        fontSize: screenWidth * 0.07,
                      ),
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/birthday.png'),
                          width: screenWidth * 0.1,
                        ),
                        SizedBox(width: 10),
                        Image(
                          image: AssetImage('assets/images/bookDay.png'),
                          width: screenWidth * 0.1,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
