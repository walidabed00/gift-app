import 'package:auto_size_text/auto_size_text.dart';
import 'package:currency_converter/Pages/Groups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});
  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
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
                                              
                                            },
                                            child: Text(
                                              'Friends',
                                              style: TextStyle(
                                                  fontSize: screenWidth * 0.08,
                                                  color: Color(0XFF2C2C2C)),
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
                                                  color: Color.fromARGB(
                                                      80, 44, 44, 44)),
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
                                color: Color.fromARGB(80, 44, 44, 44))),
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
                                  width: screenWidth * 0.1),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        size: screenWidth * 0.04,
                                      ),
                                      Text(
                                        'New Friend',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontFamily: 'Ethos Nova Heavy',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0XFFF4622E))),
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
            SliverList(
              delegate: SliverChildListDelegate([
                // Your ListView content here
                // For example, you can add your list items
                buildFriendCard(
                    screenHeight,
                    screenWidth,
                    'assets/images/female2.png',
                    'Karla Mourada',
                    '#Wife',
                    '>\$500'),
                buildFriendCard(
                    screenHeight,
                    screenWidth,
                    'assets/images/female3.png',
                    'Elle Stone',
                    '#CoWorker',
                    '\$50-\$100'),
                buildFriendCard(
                    screenHeight,
                    screenWidth,
                    'assets/images/male2.png',
                    'Justin Hartzman(You)',
                    '#Myself',
                    '\$50-\$100'),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFriendCard(double screenHeight, double screenWidth,
      String imagePath, String name, String tag, String amount) {
    return SizedBox(
      height: screenHeight * 0.3,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: const Color.fromRGBO(255, 255, 255, 1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                        image: AssetImage(imagePath),
                        width: screenWidth * 0.15),
                    Row(
                      children: [
                        Image(
                            image: AssetImage('assets/images/birthday.png'),
                            width: screenWidth * 0.1),
                        SizedBox(width: 10),
                        Image(
                            image: AssetImage('assets/images/bookDay.png'),
                            width: screenWidth * 0.1),
                      ],
                    )
                  ],
                ),
                AutoSizeText(name,
                    style: TextStyle(
                        color: Color(0XFF2C2C2C),
                        fontFamily: 'Ethos Nova Heavy',
                        letterSpacing: -0.8,
                        fontSize: screenWidth * 0.045)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            height: screenHeight * 0.04,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(tag,
                                    style: TextStyle(
                                        color: Color(0XFF313131),
                                        fontSize: screenWidth * 0.03,
                                        fontFamily: 'Ethos Nova Heavy')),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0XFFFFF6E9)),
                                    elevation: MaterialStatePropertyAll(0)))),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(
                        height: screenHeight * 0.04,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(amount,
                                style: TextStyle(
                                    color: Color(0XFFFFF6E9),
                                    fontSize: screenWidth * 0.03,
                                    fontFamily: 'Ethos Nova Heavy')),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0XFF313131)),
                                elevation: MaterialStatePropertyAll(0)))),
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
