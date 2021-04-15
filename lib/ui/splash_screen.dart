import 'dart:async';
import 'file:///D:/Flutter/FlutterApps/be_one_app/lib/ui/slider/slider_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => {Navigator.pushReplacement(context,new
    MaterialPageRoute(builder: (context)=>SliderScreen()) )});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double higth = size.height;
    double width = size.width;
    return Scaffold(
        body:  Container(
        height: higth,
        width: width,
          decoration: BoxDecoration(
          color: Color(0xff6E78F7),
        ),
        child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
        alignment: Alignment.topCenter,
        child: Image.asset("assets/logoo.png",width: 320,height: 320,)),
        SizedBox(height: 120,),
         Text("Powered by Be No1",style: TextStyle(fontSize: 16,color: Colors.white),),
            Align(
              alignment: Alignment.bottomCenter,
                child: Image.asset("assets/be_image.png",
                    height: 60, width: 60)),

            //SvgPicture.asset(assetName)
          ],
        ),
      ),
    );
  }
}
