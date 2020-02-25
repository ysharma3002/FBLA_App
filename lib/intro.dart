

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';

import 'bottomNav.dart';
import 'images.dart';




class introState extends StatefulWidget{


  @override
  intro createState() => intro();


}

class intro extends State<introState> with SingleTickerProviderStateMixin {




  AnimationController _animationController;


  @override
  void initState() {

    _animationController =
    new AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.repeat();
    super.initState();
  }




  final controller = PageController(
    initialPage: 0,
  );

  var imagesArray = [
    'image/23656.png',
    'image/mustangLogo.png'

  ];



  @override
  Widget build(BuildContext context) {

    double currentPage;


    var pageView = PageView(
      controller: controller,
      children: <Widget>[
        communityService(),
        leadershipOpportunities(),
        academicCompetitions(),
        professionalDivision(),
        finalSlide()
      ],
      onPageChanged: (int page){

          return currentPage = page.toDouble();


    }
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(100, 29, 50, 81),

      body: Column(
        children: <Widget>[

          AspectRatio(
            aspectRatio: 9/2,
            child: Container(
              padding: EdgeInsets.only(top: 40),
              child: Center(child: Text('ERHS APP',style: TextStyle(fontSize: 40,color: Colors.white),),),
            ),
          ),

          Expanded(
            child: pageView,
          ),

          AspectRatio(
            aspectRatio: 11/2,
            child: Container(
              child: WormIndicator(
                indicatorColor: Colors.red,
                length: 5,
                controller: controller,
                shape: Shape(
                    size: 16,
                    spacing: 8,
                    shape: DotShape.Circle
                ),
              ),
            ),

          )



        ],
      ),

    );

  }


  Widget communityService(){

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Image.asset('image/communityServiceImage.png',scale: .8,),

          Container(child: Text('Community Service', style: TextStyle(fontSize: 30,color: Colors.white),),padding: EdgeInsets.only(top: 20),),

          Container(child:Text('By partaking in our Bi-Monthly Street Cleanups, members can gain several hours of community service',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,), padding: EdgeInsets.only(top: 10),),


          Container(
            padding: EdgeInsets.only(top: 60),
            child: FadeTransition(
                opacity: _animationController,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text('Swipe to Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

                    Icon(Icons.navigate_next,color: Colors.white,)

                  ],
                )
            ),
          )



        ],

      );



  }





  Widget leadershipOpportunities(){

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Image.asset('image/leadershipOppImage.png',scale: .8,),

        Container(child: Text('Leadership Opportunities', style: TextStyle(fontSize: 30,color: Colors.white),),padding: EdgeInsets.only(top: 20),),

        Container(child:Text(' FBLA provides opportunities for you to grow and develop your leadership skills through skill building workshops and various business based conferences.',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,), padding: EdgeInsets.only(top: 10),),


        Container(
          padding: EdgeInsets.only(top: 60),
          child: FadeTransition(
              opacity: _animationController,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text('Swipe to Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

                  Icon(Icons.navigate_next,color: Colors.white,)
                ],
              )
          ),
        )



      ],

    );

  }






  Widget academicCompetitions(){

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Image.asset('image/academicCompImage.png',scale: .8,),

        Container(child: Text('Community Service', style: TextStyle(fontSize: 30,color: Colors.white),),padding: EdgeInsets.only(top: 20),),

        Container(child:Text('On the competitive side of FBLA, Competitions are more interactive for our members as they engage them in a variety of activities that they like such as Mobile App Development, Personal Finance, Accounting, and much more.',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,), padding: EdgeInsets.only(top: 10),),


        Container(
          padding: EdgeInsets.only(top: 60),
          child: FadeTransition(
              opacity: _animationController,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text('Swipe to Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

                  Icon(Icons.navigate_next,color: Colors.white,)
                ],
              )
          ),
        )



      ],

    );

  }





  Widget professionalDivision(){

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Image.asset('image/profDivImage.png',scale: .8,),

        Container(child: Text('Community Service', style: TextStyle(fontSize: 30,color: Colors.white),),padding: EdgeInsets.only(top: 20),),

        Container(child:Text('In the Professional Division, a group of highly skilled professionals are available to assist with any FBLA related questions you may feel pertain to ask as they are the senior level Division of the nation-wide FBLA-PBL organization.',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,), padding: EdgeInsets.only(top: 10),),


        Container(
          padding: EdgeInsets.only(top: 60),
          child: FadeTransition(
              opacity: _animationController,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text('Swipe to Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

                  Icon(Icons.navigate_next,color: Colors.white,)
                ],
              )
          ),
        )






      ],

    );

  }







  Widget finalSlide(){

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Image.asset('image/mustangLogo.png',scale: 2.5,),




          Container(

            padding: EdgeInsets.only(bottom: 10),

            height: MediaQuery.of(context).size.width * .17,
            child: new ButtonTheme(
              minWidth: MediaQuery.of(context).size.width  * 0.8,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
              height: 50,
              child: new RaisedButton(
                  child: new Text("Sign Up", style: TextStyle(fontFamily: "Heiti",fontSize: 25.0,color: Colors.black,),),
                  color: Colors.lightGreenAccent,

                  onPressed:(){

                  }
              ),


            ),
          ),


        Container(
          padding: EdgeInsets.only(top: 10),

          height: MediaQuery.of(context).size.width * .17,
          child: new ButtonTheme(
            minWidth: MediaQuery.of(context).size.width  * 0.8,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
            height: 50,
            child: new RaisedButton(
                child: new Text("Log In", style: TextStyle(fontFamily: "Heiti",fontSize: 25.0,color: Colors.black,),),
                color: Colors.white,

                onPressed:(){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavState()),);

                }
            ),


          ),
        ),




      ],

    );

  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }




}