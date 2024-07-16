import 'package:currency_converter/Pages/Events.dart';
import 'package:currency_converter/Pages/Friends.dart';

import 'package:currency_converter/Pages/Matcher.dart';
import 'package:currency_converter/Pages/Profile.dart';
import 'package:currency_converter/Pages/currency_converter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
        return MaterialApp(
          theme: ThemeData(
            cupertinoOverrideTheme: CupertinoThemeData(textTheme: CupertinoTextThemeData(tabLabelTextStyle: TextStyle(fontSize: screenWidth * 0.03),),),
            fontFamily: 'Bree Serif',
            scaffoldBackgroundColor: Color(0XFFFFF4E5),
          ),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return CupertinoTabScaffold(resizeToAvoidBottomInset: false, tabBar: CupertinoTabBar(activeColor:Color(0XFFF4622E), inactiveColor: Color(0XFF0D0D0D), height: screenHeight * 0.1, backgroundColor: Color(0XFFFFF4E5),border: Border.all(width: 0, color: Color(0XFFFFF4E5)), items: <BottomNavigationBarItem> [
      BottomNavigationBarItem(icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/HomeInactive.png'), height: screenHeight * 0.045,),
          Text('Home', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFF0D0D0D)),)
        ],
      ), activeIcon:  Column(
        children: [
          Container(margin: EdgeInsets.only(top: 16),child: Image(image: AssetImage('assets/images/Home.png'), height: screenHeight * 0.045,)),
          Text('Home', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFFF4622E)),)
        ],
      ),),


      BottomNavigationBarItem(icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/Matcher.png'), height: screenHeight * 0.045,),
          Text('Matcher', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFF0D0D0D)),)
        ],
      ), activeIcon:  Column(
        children: [
          Container(margin: EdgeInsets.only(top: 16), child: Image(image: AssetImage('assets/images/Matcher.png'), height: screenHeight * 0.045,)),
          Text('Matcher', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFFF4622E)),)
        ],
      ),),


       BottomNavigationBarItem(icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/Friends.png'), height: screenHeight * 0.045,),
          Text('Friends', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFF0D0D0D)),)
        ],
      ), activeIcon:  Column(
        children: [
          Container(margin: EdgeInsets.only(top: 16), child: Image(image: AssetImage('assets/images/FriendsActive.png'), height: screenHeight * 0.045,)),
          Text('Friends', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFFF4622E)),)
        ],
      ),),


       BottomNavigationBarItem(icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/Events.png'), height: screenHeight * 0.045,),
          Text('Events', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFF0D0D0D)),)
        ],
      ), activeIcon:  Column(
        children: [
          Container(margin: EdgeInsets.only(top: 16),child: Image(image: AssetImage('assets/images/EventsActive.png'), height: screenHeight * 0.045,)),
          Text('Events', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFFF4622E)),)
        ],
      ),),

       BottomNavigationBarItem(icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/Profile.png'), height: screenHeight * 0.045,),
          Text('Profile', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFF0D0D0D)),)
        ],
      ), activeIcon:  Column(
        children: [
          Container(margin: EdgeInsets.only(top: 16),child: Image(image: AssetImage('assets/images/Profile.png'), height: screenHeight * 0.045,)),
          Text('Profile', style: TextStyle(fontSize: screenWidth * 0.03, color: Color(0XFFF4622E)),)
        ],
      ),),


    ]),
    backgroundColor: Color(0XFFFFF4E5),
    
    controller: CupertinoTabController(initialIndex: 0),
    tabBuilder: (context, index) {
      switch(index) {
        case 0:
        return CupertinoTabView(
          builder: (context) {
            return
              CupertinoPageScaffold(child: CurrencyConverterPage(),);
          }
        );

         case 1:
        return CupertinoTabView(
          builder: (context) {
            return
              CupertinoPageScaffold(child: MatcherPage(),);
          }
        );

         case 2:
        return CupertinoTabView(
          builder: (context) {
            return
              CupertinoPageScaffold(child: Friends(),);
          }
        );

         case 3:
        return CupertinoTabView(
          builder: (context) {
            return
              CupertinoPageScaffold(child: EventsPage(),);
          }
        );

         case 4:
        return CupertinoTabView(
          
          builder: (context) {
            return
              CupertinoPageScaffold(child: EventsPage(),);
          }
        );

         case 5:
        return CupertinoTabView(
          builder: (context) {
            return
              CupertinoPageScaffold(child: ProfilePage(),);
          }
        );
      }
      return Container();
    },
    );
  }
}

