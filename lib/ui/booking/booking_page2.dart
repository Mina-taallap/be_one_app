import 'package:be_one_app/ui/booking/booking_page3.dart';
import 'package:be_one_app/ui/home_Page/home_page.dart';
import 'package:flutter/material.dart';

class BookingPage2 extends StatefulWidget {
  @override
  _BookingPage2State createState() => _BookingPage2State();
}

class _BookingPage2State extends State<BookingPage2> {
  List timeList=[

  ];
  int _index=0;
  Gradient gradient1= LinearGradient(
    begin: Alignment.bottomLeft,
    end:
    Alignment(0.5, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[
      Color(0xffF8F494),
      Color(0xffFF9FFF)
    ], // red to yellow
    tileMode: TileMode.clamp, // repeats the gradient over the canvas
  );
  Gradient gradient2= LinearGradient(
    begin: Alignment.bottomLeft,
    end:
    Alignment(0.5, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[
      Color(0xffE0CCFF),
      Color(0xffC1FFF1)
    ], // red to yellow
    tileMode: TileMode.clamp, // repeats the gradient over the canvas
  );
  Gradient gradient3= LinearGradient(
    begin: Alignment.bottomLeft,
    end:
    Alignment(0.5, 0.0), // 10% of the width, so there are ten blinds.
    colors: <Color>[
      Color(0xff90E4FF),
      Color(0xff9FFFF5)
    ], // red to yellow
    tileMode: TileMode.clamp, // repeats the gradient over the canvas
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [backContainer(), forGround()],
      ),
    );
  }

  Widget backContainer() {
    Size size = MediaQuery.of(context).size;
    double higth = size.height;
    double width = size.width;
    return Container(
      width: width,
      height: higth / 3,
      decoration: BoxDecoration(
        color: Color(0xff6E78F7),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
    );
  }

  Widget forGround() {
    return Container(
      //height: MediaQuery.of(context).size.height/2,
      margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 5,),
              InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>HomePage(1)));
                  },
                  child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)),
              SizedBox(width: 5,),
              Text(
                "Select a time slot",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(18),
              ),
              margin: EdgeInsets.all(10),
              //  elevation: 80,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    //   SvgPicture.asset("assets/dental-prosthesis.svg"),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),

                        Container(

                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/profile_icons/dr_fahed_image.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              "Dr.Fahid Jebrini.",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff313450),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Dental care",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff898A8F),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text("Today, 8 Dec"),
                    SizedBox(height: 20,),
                    containerDesing(gradient1,"Morning"),
                    SizedBox(height: 7,),

                    containerDesing(gradient2,"Afternoon"),
                    SizedBox(height: 7,),

                    containerDesing(gradient2,"Evening & Night"),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context)=>BookingPage3()));
                      },
                      child: Container(
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff6E78F7)),
                          child: Center(child: Text("Next"))),
                    ),
                    SizedBox(
                      height: 60.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  containerDesing(gradiant,text){
    return
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 11),
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                color: Color(0xfffdfbfb),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffD6D6D6))
                  ,
              ),


                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    height: 40,
                    child: ListView.builder
                      (
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return
                          Row(
                            children: [
                              Text("10.00",style: TextStyle(color: Color(0xff313450)),),
                              SizedBox(width: 15,)
                            ],
                          );

                    }),
                  ),
                ),
              ),

            Container(
              height: 20,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                  gradient:gradiant,

                  borderRadius: BorderRadius.circular(18)),
              child: Center(child: Text("$text",style: TextStyle(fontSize: 15,color: Color(0xff313450)),)),
            )
          ],
        );
  }
}
