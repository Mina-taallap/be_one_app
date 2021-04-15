import 'package:be_one_app/ui/booking/booking_page2.dart';
import 'package:flutter/material.dart';

class BookingMainPage extends StatefulWidget {
  @override
  _BookingMainPageState createState() => _BookingMainPageState();
}

class _BookingMainPageState extends State<BookingMainPage> {
  @override
  Widget build(BuildContext context) {
    int _index=0;
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
               SizedBox(width: 25,),
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
                    Text("No slots available for today"),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xffC9C9C9))),
                        child: Center(
                          child: Text(
                            "Next day avaibility on Sun, 09",
                            style:
                                TextStyle(fontSize: 15, color: Color(0xff6E78F7)),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Text("OR"),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context)=>BookingPage2()));
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

}
