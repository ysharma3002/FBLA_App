

import 'package:fbla_app/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:fbla_app/bottomNav.dart';
import 'package:states_rebuilder/states_rebuilder.dart';


class supportState extends StatefulWidget{

  @override
  support createState() => support();


}




class support extends State<supportState>{

  var fontWeight1 = FontWeight.bold;

  var fontWeight2 = FontWeight.normal;

  var fontWeight3 = FontWeight.normal;


  @override
  Widget build(BuildContext context) {


    int currentPage;


    final controller = PageController(
      initialPage: 0,
    );





    var pageView = PageView(
        controller: controller,
        children: <Widget>[
          qAndA(),
          contactUs(),
          test(),

        ],
        onPageChanged: (int page){
          currentPage = page;

          if(page==0) {
            setState(() {
              fontWeight1 = FontWeight.bold;
              fontWeight2 = FontWeight.normal;
              fontWeight3 = FontWeight.normal;
            });
          }

          if(page==1) {
            setState(() {
              fontWeight1 = FontWeight.normal;
              fontWeight2 = FontWeight.bold;
              fontWeight3 = FontWeight.normal;
            });
          }

          if(page==2) {
            setState(() {
              fontWeight1 = FontWeight.normal;
              fontWeight2 = FontWeight.normal;
              fontWeight3 = FontWeight.bold;
            });
          }


        }

    );






    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: <Widget>[

          SafeArea(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10,left: 20),
                child: Text('Abhijit Singh',style: TextStyle(fontSize: 30),),

              )
          ),

          AspectRatio(
              aspectRatio: 13/2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Text('Q&A',style: TextStyle(fontSize: 20,fontWeight: fontWeight1),),
                  Text('Contact Us',style: TextStyle(fontSize: 20,fontWeight: fontWeight2)),
                  Text('Report a Bug',style: TextStyle(fontSize: 20,fontWeight: fontWeight3))
                ],

              )
          ),

          Expanded(
            child: pageView,
          )


        ],

      ),
    );
  }

}















Widget qAndA() {

  return ListView(
    children: <Widget>[

      Center(
        child: Text('A: You may create an account however you will not be granted permission to all sections',style: TextStyle(fontSize: 10)),
      ),

      Text('Q: Can I create an account even if I am not an FBLA member?',style: TextStyle(fontSize: 10, color: Colors.red, fontWeight: FontWeight.bold),),
      Text('A: You may create an account however you will not be granted permission to all sections',style: TextStyle(fontSize: 10)),

      SizedBox(
        height: 10,
      ),

      Text('Q: Can I create an account even if I am not an FBLA member?',style: TextStyle(fontSize: 10),),
      Text('A: You may create an account however you will not be granted permission to all sections',style: TextStyle(fontSize: 10)),

      Text('Q: Can I create an account even if I am not an FBLA member?',style: TextStyle(fontSize: 10),),
      Text('A: You may create an account however you will not be granted permission to all sections',style: TextStyle(fontSize: 10)),

      //TODO: Add remaining text, style the font for size, style the font for color
    ],
  );
}

Widget contactUs() {

  return ListView(
    children: <Widget>[

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 0,left: 40),
            child: Text('ERHS FBLA App Developers',style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold)),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 40),
            child: Text('Abhijit Singh',style: TextStyle(fontSize: 15, color: Colors.black,)),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 5,left: 40),
            child: Text('Email: abhijitsingh.student@gmail.com',style: TextStyle(fontSize: 15),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 40),
            child: Text('Yash Sharma',style: TextStyle(fontSize: 15, color: Colors.black,)),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 5,left: 40),
            child: Text('Email: ysharma3002@gmail.com',style: TextStyle(fontSize: 15),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 25,left: 40),
            child: Text('ERHS FBLA Chapter Officers',style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),),

          ),

      SizedBox(
        height: 25,
      ),
      //add spacing

      //image and name of officer



      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/image.png',scale: 4.5,),
            padding: EdgeInsets.only(left: 5, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Rui Song', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                ),
                Container(
                  child:Text('VP of Competitive Events', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/allan.png',scale: 4.5,),
            padding: EdgeInsets.only(left: 0, right: 0, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Allan Chen', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 50, right: 58, bottom: 10),

                ),
                Container(
                  child:Text('VP of Projects', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                ),
              ]
          ),

        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/manal.png',scale: 4.5,),
            padding: EdgeInsets.only(left: 33, right:35,bottom: 20),
          ),

          Container(
            child: Column(
                children: <Widget>[
                  Container(
                    child:Text('Manal Ali', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                    padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                  ),
                  Container(
                    child:Text('Director of Membership', style: TextStyle(fontSize: 15, color: Colors.black,),),
                    padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                  ),
                ]
            ),
            padding: EdgeInsets.only(right:33),
          )

        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/thomas.png',scale: 3.5,),
            padding: EdgeInsets.only(left: 12, right: 20, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Thomas Rife', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Director of Outreach', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/sanika.png',scale: 2,),
            padding: EdgeInsets.only(left: 10, right: 20, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Sanika Subhedar', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Co-President', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/peter.png',scale: 3.3,),
            padding: EdgeInsets.only(left: 10, right: 20, bottom: 20),
          ),
          Column(
              children: <Widget>[
                Container(
                  child:Text('Peter Chang', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Director of Outreach', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/maham.png',scale: 1.9,),
            padding: EdgeInsets.only(left: 27, right: 20, bottom: 20),
          ),
          Column(
              children: <Widget>[
                Container(
                  child:Text('Maham Mobin', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Executive Vice President', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/joyce.png',scale: 7.2,),
            padding: EdgeInsets.only(left: 37, right: 10, bottom: 25),
          ),
          Column(
              children: <Widget>[
                Container(
                  child:Text('Joyce He', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Director of Membership', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 65, left: 20, bottom: 10),

                ),
              ]
          ),

        ],
      ),

      //add more people


      //add spacer


      //title

      Center(
        child: Text('Helpful Links',style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
      ),

      //decorated link
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/BAA.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('Business Achievement Awards',style: TextStyle(fontSize: 20, color: Colors.black,),),
      ),

      //add more decorated links and name of link

      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/CSA.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('Community Service Awards',style: TextStyle(fontSize: 20, color: Colors.black,),),
      ),
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/Inland.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('Inland Section Website',style: TextStyle(fontSize: 20, color: Colors.black,),),
      ),
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/CAFBLA.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('CA FBLA Website',style: TextStyle(fontSize: 20, color: Colors.black,),),
      ),
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/FBLAPBL.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('FBLA-PBL Website',style: TextStyle(fontSize: 20, color: Colors.black,),),
      ),
    ],
  );

}

















