import 'dart:async';

import 'package:flutter/material.dart';

import 'intro.dart';



//void main() {
//  runApp(new MaterialApp(
//    home: new splashTimer(),
//    routes: <String, WidgetBuilder>{
//      '/introState': (BuildContext context) => new introState(),
//    },
//  ));
//}

class splashTimer extends StatefulWidget {
  @override
  splashScreen createState() => new splashScreen();

}



class splashScreen extends State<splashTimer>{

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, takeToHome);
  }

  void takeToHome(){
    Navigator.of(context).pushReplacementNamed('/introState');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Color.fromARGB(100, 29, 50, 81),
      body: new Center(
        child: Image.asset(
          'image/mustangLogo.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );


  }

}
