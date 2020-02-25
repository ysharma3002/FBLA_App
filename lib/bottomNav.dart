

import 'dart:core';


import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fbla_app/support.dart';
import 'package:fbla_app/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'dashboard.dart';
import 'meeting.dart';


void main() {
  runApp(new MaterialApp(
    home: new bottomNavState(),
  ));
}

class bottomNavState extends StatefulWidget{

  @override
  bottomNav createState() => bottomNav();


}




class bottomNav extends State<bottomNavState>{





  int currentPage = 0;



  List<Widget> screens = [

  ];


  List<Color> currentColor = [

    Colors.white,
    Colors.green,
    Colors.red

  ];


  @override
  Widget build(BuildContext context) {

    screens=[
      dashboard(),
      meeting(),
      supportState(),
    ];

    return Scaffold(
      body: screens[currentPage],
      bottomNavigationBar: CurvedNavigationBar(


        backgroundColor: currentColor[currentPage],
        buttonBackgroundColor: Colors.black,
        color: Colors.black,
        index: 0,
        items: <Widget>[
          Icon(Icons.add, size: 30,color: Colors.white,),
          Icon(Icons.list, size: 30,color: Colors.white,),
          Icon(Icons.compare_arrows, size: 30,color: Colors.white,),
        ],
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },

      ),


      backgroundColor: Colors.blue,
    );
  }






}
