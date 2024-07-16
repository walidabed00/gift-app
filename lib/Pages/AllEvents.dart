import 'package:auto_size_text/auto_size_text.dart';
import 'package:currency_converter/Pages/Events.dart';
import 'package:currency_converter/Pages/Groups.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllEventsPage extends StatelessWidget {
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
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 4),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/images/logo.svg', width: screenWidth * 0.13,),
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
                                                ]
                                            ),
                                            child: AutoSizeText(
                                              '12',
                                              style: TextStyle(
                                                color: Color(0XFF2C2C2C), fontSize: screenWidth * 0.03,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 4, ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => EventsPage()));
                                            },
                                            child: Text(
                                              'My Events',
                                              style: TextStyle(
                                                fontSize: screenWidth * 0.08,
                                                color: Color.fromARGB(80, 44, 44, 44),
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
                                                ]
                                            ),
                                            child: AutoSizeText(
                                              '12',
                                              style: TextStyle(
                                                color: Color(0XFF2C2C2C), fontSize: screenWidth * 0.03,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AllEventsPage()));},
                                            child: Text(
                                              'All',
                                              style: TextStyle(
                                                fontSize: screenWidth * 0.08,
                                                color: Color(0XFF2C2C2C),
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
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 0,
                    
                     shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                               color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column (
                      children: [Container(
                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color.fromARGB(66, 44, 44, 44)),)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Monday, ', style: TextStyle(fontSize: 12,letterSpacing: -0.7, fontFamily: 'Ethos Nova Heavy', color: Color(0XFF2C2C2C)),),
                              Text('June 21,', style: TextStyle(fontSize: 12,letterSpacing: -0.7, fontFamily: 'Ethos Nova Heavy', color: Color(0XFFF4622E)),),
                              Text('2024', style: TextStyle(fontSize: 12,letterSpacing: -0.7, fontFamily: 'Ethos Nova Heavy', color: Color(0XFF2C2C2C)),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth * 0.26,
                                height: screenHeight * 0.12,
                                child: Container(
                                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/noel.png'), fit: BoxFit.fill,)),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              SizedBox(
                                width: screenWidth * 0.5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Religious Holidays', style: TextStyle(fontFamily: 'Ethos Nova Heavy', fontSize: screenWidth * 0.025),),
                                    Text('Christmas', style: TextStyle(fontFamily: 'Bree Serif', fontSize: screenWidth * 0.06)),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    SizedBox(width: screenWidth * 0.3,height: screenHeight * 0.03, child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Subscribe',
                                        style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontFamily: 'Ethos Nova Heavy',
                                          fontSize: screenWidth * 0.025,
                                        ),textAlign: TextAlign.center,
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Color(0XFFF4622E)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                        padding: MaterialStatePropertyAll(
                                          EdgeInsets.fromLTRB(0, 3, 0, 3),
                                        ),
                                        elevation: MaterialStatePropertyAll(0),
                                      ),
                                    ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.26,
                                      height: screenHeight * 0.12,
                                      child: Container(
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/noel.png'), fit: BoxFit.fill,)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.04,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.5,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Religious Holidays', style: TextStyle(fontFamily: 'Ethos Nova Heavy', fontSize: screenWidth * 0.025),),
                                          Text('Christmas', style: TextStyle(fontFamily: 'Bree Serif', fontSize: screenWidth * 0.06)),
                                          SizedBox(
                                            height: screenHeight * 0.01,
                                          ),
                                          SizedBox(width: screenWidth * 0.3,height: screenHeight * 0.03, child: ElevatedButton(
                                                onPressed: () {},
                                                
                                                child: Text(
                                                  'Subscribe',
                                                  style: TextStyle(
                                                    color: Color(0XFFFFFFFF),
                                                    fontFamily: 'Ethos Nova Heavy',
                                                    
                                                    fontSize: screenWidth * 0.025,
                                                  ),textAlign: TextAlign.center,
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
                                                        EdgeInsets.fromLTRB(0, 3, 0, 3)),
                                                    elevation: WidgetStatePropertyAll(0)),
                                              ),)
                                        ]
                                      ),
                                    )
                                  ]
                                ),
                                    ),
                      
                                    SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                            
                                    Card(
                                      
                                      elevation: 0,
                                      color: Colors.white,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.26,
                                      height: screenHeight * 0.12,
                                      child: Container(
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/noel.png'), fit: BoxFit.fill,)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.04,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.5,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Religious Holidays', style: TextStyle(fontFamily: 'Ethos Nova Heavy', fontSize: screenWidth * 0.025),),
                                          Text('Christmas', style: TextStyle(fontFamily: 'Bree Serif', fontSize: screenWidth * 0.06)),
                                          SizedBox(
                                            height: screenHeight * 0.01,
                                          ),
                                          SizedBox(width: screenWidth * 0.3,height: screenHeight * 0.03, child: ElevatedButton(
                                                onPressed: () {},
                                                
                                                child: Text(
                                                  'Subscribe',
                                                  style: TextStyle(
                                                    color: Color(0XFFFFFFFF),
                                                    fontFamily: 'Ethos Nova Heavy',
                                                    
                                                    fontSize: screenWidth * 0.025,
                                                  ),textAlign: TextAlign.center,
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
                                                        EdgeInsets.fromLTRB(0, 3, 0, 3)),
                                                    elevation: WidgetStatePropertyAll(0)),
                                              ),)
                                        ]
                                      ),
                                    )
                                  ]
                                ),
                                    ),
                      
                                    SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                            
                                    Card(
                                      
                                      elevation: 0,
                                      color: Colors.white,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.26,
                                      height: screenHeight * 0.12,
                                      child: Container(
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/noel.png'), fit: BoxFit.fill,)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.04,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.5,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Religious Holidays', style: TextStyle(fontFamily: 'Ethos Nova Heavy', fontSize: screenWidth * 0.025),),
                                          Text('Christmas', style: TextStyle(fontFamily: 'Bree Serif', fontSize: screenWidth * 0.06)),
                                          SizedBox(
                                            height: screenHeight * 0.01,
                                          ),
                                          SizedBox(width: screenWidth * 0.3,height: screenHeight * 0.03, child: ElevatedButton(
                                                onPressed: () {},
                                                
                                                child: Text(
                                                  'Subscribe',
                                                  style: TextStyle(
                                                    color: Color(0XFFFFFFFF),
                                                    fontFamily: 'Ethos Nova Heavy',
                                                    
                                                    fontSize: screenWidth * 0.025,
                                                  ),textAlign: TextAlign.center,
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
                                                        EdgeInsets.fromLTRB(0, 3, 0, 3)),
                                                    elevation: WidgetStatePropertyAll(0)),
                                              ),)
                                        ]
                                      ),
                                    )
                                  ]
                                ),
                                    ),
                      
                                    SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                            
                                    Card(
                                      
                                      elevation: 0,
                                      color: Colors.white,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.26,
                                      height: screenHeight * 0.12,
                                      child: Container(
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/noel.png'), fit: BoxFit.fill,)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.04,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.5,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Religious Holidays', style: TextStyle(fontFamily: 'Ethos Nova Heavy', fontSize: screenWidth * 0.025),),
                                          Text('Christmas', style: TextStyle(fontFamily: 'Bree Serif', fontSize: screenWidth * 0.06)),
                                          SizedBox(
                                            height: screenHeight * 0.01,
                                          ),
                                          SizedBox(width: screenWidth * 0.3,height: screenHeight * 0.03, child: ElevatedButton(
                                                onPressed: () {},
                                                
                                                child: Text(
                                                  'Subscribe',
                                                  style: TextStyle(
                                                    color: Color(0XFFFFFFFF),
                                                    fontFamily: 'Ethos Nova Heavy',
                                                    
                                                    fontSize: screenWidth * 0.025,
                                                  ),textAlign: TextAlign.center,
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
                                                        EdgeInsets.fromLTRB(0, 3, 0, 3)),
                                                    elevation: WidgetStatePropertyAll(0)),
                                              ),)
                                        ]
                                      ),
                                    )
                                  ]
                                ),
                                    ),
                                  ],
                                ),
                    ),
                  ),
                ),]
              )
                        )
                      ]),
      )
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
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
