import 'package:auto_size_text/auto_size_text.dart';
import 'package:currency_converter/Pages/AllEvents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            // SliverToBoxAdapter for the top section
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenHeight * 0.3,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 4),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/logo.svg',
                            width: screenWidth * 0.13,
                          ),
                          SizedBox(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: screenWidth * 0.55,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: screenWidth * 0.08,
                                        height: screenHeight * 0.03,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(28, 0, 0, 0),
                                              spreadRadius: 1,
                                              blurRadius: 30,
                                            )
                                          ],
                                        ),
                                        child: AutoSizeText(
                                          '12',
                                          style: TextStyle(
                                            color: Color(0XFF2C2C2C), 
                                            fontSize: screenWidth * 0.03,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => EventsPage()),
                                          );
                                        },
                                        child: Text(
                                          'My Events',
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.08,
                                            color: Color(0XFF2C2C2C),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.25,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: screenWidth * 0.08,
                                        height: screenHeight * 0.03,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(23, 0, 0, 0),
                                              spreadRadius: 1,
                                              blurRadius: 30,
                                            )
                                          ],
                                        ),
                                        child: AutoSizeText(
                                          '12',
                                          style: TextStyle(
                                            color: Color(0XFF2C2C2C), 
                                            fontSize: screenWidth * 0.03,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => AllEventsPage()),
                                          );
                                        },
                                        child: Text(
                                          'All',
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.08,
                                            color: Color.fromARGB(80, 44, 44, 44),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            // SliverPersistentHeader for the search bar and buttons
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                minHeight: screenHeight * 0.06,
                maxHeight: screenHeight * 0.06,
                child: Container(
                  color: Color(0XFFFFF6E9),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.5,
                          height: screenHeight * 0.08,
                          child: SearchBar(
                            hintText: 'Search',
                            backgroundColor: MaterialStateProperty.all(Colors.white),
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
                                image: AssetImage('assets/images/filtration1.png'),
                                width: screenWidth * 0.1,
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                                height: screenHeight * 0.06,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        size: screenWidth * 0.04,
                                      ),
                                      Text(
                                        'New Friend',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          fontFamily: 'Ethos Nova Heavy',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color(0XFFF4622E)),
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
            
            // SliverList for the events list
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Monday, ', style: TextStyle(fontSize: 12,letterSpacing: -0.7, fontFamily: 'Ethos Nova Heavy', color: Color(0XFF2C2C2C)),),
                              Text('June 21,', style: TextStyle(fontSize: 12,letterSpacing: -0.7, fontFamily: 'Ethos Nova Heavy', color: Color(0XFFF4622E)),),
                              Text('2024', style: TextStyle(fontSize: 12,letterSpacing: -0.7, fontFamily: 'Ethos Nova Heavy', color: Color(0XFF2C2C2C)),),
                            ],
                          ),
                            Text('My Events', style: TextStyle(fontSize: screenWidth * 0.06),),
                            buildEventCard(screenWidth, screenHeight,
                                'assets/images/event1.png',
                                'Worldwide Celebration', 'World Book Day',
                                "You're sending 2 gifts on this day"),
                            SizedBox(height: 10),
                            buildEventCard(screenWidth, screenHeight,
                                'assets/images/event2.png', 'Birthday',
                                'Ellie Stone',
                                "You're spending \$200 on Ellie's Gift"),
                            SizedBox(height: 10),
                            buildEventCard(screenWidth, screenHeight,
                                'assets/images/event3.png', 'Birthday',
                                'Karla Mourada',
                                "You're spending \$200 on Karla's Gift"),
                          ],
                        ),
                      ),
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

  Widget buildEventCard(double screenWidth, double screenHeight, String imagePath,
      String eventTitle, String subtitle, String description) {
    return SizedBox(

      height: screenHeight * 0.4,
      child: Card(
        elevation: 0,
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.white,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventTitle,
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    color: Color(0XFFFFFFFF),
                    letterSpacing: -0.7,
                    fontFamily: 'Ethos Nova Heavy',
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    color: Color(0XFFFFFFFF),
                    letterSpacing: -0.7,
                    fontFamily: 'Bree Serif',
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    color: Color.fromARGB(73, 44, 44, 44),
                    letterSpacing: -0.7,
                    fontFamily: 'Ethos Nova Heavy',
                  ),
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
