import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          width: double.infinity,
          height: 350,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/logo.svg'),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Hello', style: TextStyle(fontSize: 30)),
                          SizedBox(width: 8),
                          SvgPicture.asset('assets/images/wave.svg'),
                          SizedBox(width: 8),
                          Text(
                            'Justin',
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/male.png'),width: 35,),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Do Not Forget That',
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Aisling's",
                            style: TextStyle(fontSize: 30, color: Color(0XFFF4622E)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        Image(image: AssetImage('assets/images/female.png'),width: 35,),
                            SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Birthday",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Is In",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "21 Days",
                            style: TextStyle(fontSize: 30, decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ]),
    ));
  }
}
