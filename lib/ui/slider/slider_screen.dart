import 'package:be_one_app/ui/login/login_page.dart';
import 'package:be_one_app/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color:Colors.black
      ), //tile font size, weight and color
      bodyTextStyle:TextStyle(fontSize: 19.0, color:Colors.black),
      //body text size and color
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      //decription padding
      imagePadding: EdgeInsets.all(20), //image padding
      boxDecoration:BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   stops: [0.1, 0.5, 0.7, 0.9],
        //   colors: [
        //     Colors.orange,
        //     Colors.deepOrangeAccent,
        //     Colors.red,
        //     Colors.redAccent,
        //   ],
        // ),
      ), //show linear gradient background of page
    );
    return IntroductionScreen(
      color: Color(0xffFFFFFF),
      //globalBackgroundColor: Colors.deepOrangeAccent,
      //main background of screen
      pages: [ //set your page view here
        PageViewModel(
          title: "Welcome To",
          body: " Dr.Fahed Jebrini App",
          image: introImage('assets/slider/slide1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "You Can Book" ,
          body: "Your Appointment",
          image: introImage('assets/slider/slide2.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Your Teeth Are Safe",
          body: "With US",
          image: introImage('assets/slider/slide3.jpg'),
          decoration: pageDecoration,
        ),


        //add more screen here
      ],

      onDone: () => goHomepage(context), //go to home page on done
      onSkip: () => goHomepage(context), // You can override on skip
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text('Skip', style: TextStyle(color: Color(0xff6E78F7)),),
      next: Icon(Icons.arrow_forward, color: Color(0xff6E78F7),),
      done: Text('Getting Stated', style: TextStyle(
          fontWeight: FontWeight.w600, color:Color(0xff6E78F7)
      ),),
      dotsDecorator: const DotsDecorator(activeColor: Color(0xff6E78F7),
        size: Size(10.0, 10.0), //size of dots
        color: Color(0xff6E78F7), //color of dots
        activeSize: Size(22.0, 10.0),
        //activeColor: Colors.white, //color of active dot
        activeShape: RoundedRectangleBorder( //shave of active dot
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context){
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context){
          return LoginPage();
        }
        ), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      child: Image.asset('$assetName',width: 200,height: 200,
      //  fit: BoxFit.cover,
      ),
      alignment: Alignment.bottomCenter,
    );
  }
}
