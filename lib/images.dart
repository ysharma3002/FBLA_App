import 'package:flutter/cupertino.dart';



//app icon
Widget testIcon(){

    AssetImage assetImage = AssetImage('image/23656.png');
    Image testIcon = Image(image: assetImage);

    return Container(child: testIcon,);

}


Widget icon(){

  AssetImage assetImage = AssetImage('image/mustangLogo.png');
  Image icon = Image(image: assetImage);

  return Container(child: icon,);

}