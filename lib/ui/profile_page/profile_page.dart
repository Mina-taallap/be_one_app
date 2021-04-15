import 'package:be_one_app/ui/profile_page/profile_taps/doctors_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var percent = 0.75;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(

              // height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      color: Color(0xff6E78F7),
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            //   IconButton(
                            //       icon: Icon(
                            //         Icons.people_alt_outlined,
                            //         color: Colors.white,
                            //       ),
                            //       onPressed: () {}),
                            //   IconButton(
                            //       icon: Icon(
                            //         Icons.settings,
                            //         color: Colors.white,
                            //       ),
                            //       onPressed: () {}),
                            //
                            ],
                          ),
                          SizedBox(height: 15,),
                          CircleAvatar(
                            radius: 35,
                            child: Image(
                              image:
                                  AssetImage("assets/profile_icons/profile_icon.png"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Jitendra Raut",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "+91 97306270877",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${(percent * 100).toInt()}%",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     LinearPercentIndicator(
                          //       width: MediaQuery.of(context).size.width / 1.2,
                          //       lineHeight: 7.0,
                          //       percent: percent,
                          //       backgroundColor: Color(0xff6771E4),
                          //       progressColor: Colors.white,
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 25,
                          // ),
                          Container(
                            padding: EdgeInsets.all(9.0),
                            height: MediaQuery.of(context).size.height / 19,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(color: Color(0xffC7C7C7))),
                            child: Text(
                              "Complete your profile",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: forGround(),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget forGround(){
    return
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(18),
              ),
              margin: EdgeInsets.all(10),
              elevation: 80,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Dr.Fahid Jebrini.",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff313450),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff707070),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Syria",
                          style:
                          TextStyle(fontSize: 12, color: Color(0xff898A8F)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        SmoothStarRating(
                          color: Color(0xffEFCE4A),
                          borderColor: Color(0xffCCCCCC),
                          starCount: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "CLOSED TODAY",
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                        Text(
                          "9:30AM - 08:00PM",
                          style:
                          TextStyle(color: Color(0xff313450), fontSize: 12),
                        ),
                        Text("All Timing",
                            style: TextStyle(
                                color: Color(0xff3A58FC), fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff1CA2CC),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "92/6, 3rd Floor, Outer Ring Road, Chandra Layout",
                          style:
                          TextStyle(fontSize: 12, color: Color(0xff898A8F)),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                     //   Navigator.push(context,MaterialPageRoute(builder: (context)=>GetDirectionsPage("https://www.google.com/maps/dir/-33.8592754,151.2096187/Sydney+Opera+House,+Sydney+Opera+House,+Bennelong+Point,+Sydney+NSW+2000,+Australia/@-33.8592754,151.2096187,9z", "Direction")));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width /0.5,
                        height: MediaQuery.of(context).size.height / 6,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/home_page/dental_clinic/map.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //button row
                    // Stack(
                    //   children: [
                    //     FlatButton(
                    //         padding: EdgeInsets.all(8.0),
                    //         onPressed: () {},
                    //         child: Container(
                    //           height: 35,
                    //           width: MediaQuery.of(context).size.width - 80,
                    //           decoration: BoxDecoration(
                    //               border: Border.all(color: Color(0xffC7C7C7)),
                    //               borderRadius: BorderRadius.circular(15.0),
                    //               color: Colors.white),
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(8.0),
                    //             child: Text(
                    //               "Give Feedback",
                    //               textAlign: TextAlign.start,
                    //               style: TextStyle(
                    //                   color: Color(0xff313450), fontSize: 14),
                    //             ),
                    //           ),
                    //         )),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //         FlatButton(
                    //             padding: EdgeInsets.all(8.0),
                    //             onPressed: () {},
                    //             child: Container(
                    //               height: 35,
                    //               width:
                    //               MediaQuery.of(context).size.width - 160,
                    //               decoration: BoxDecoration(
                    //                   border:
                    //                   Border.all(color: Color(0xffC7C7C7)),
                    //                   borderRadius: BorderRadius.circular(15.0),
                    //                   color: Color(0xff6E78F7)),
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(8.0),
                    //                 child: Text(
                    //                   "Book",
                    //                   textAlign: TextAlign.center,
                    //                   style: TextStyle(
                    //                       color: Colors.white, fontSize: 14),
                    //                 ),
                    //               ),
                    //             )),
                    //       ],
                    //     )
                    //   ],
                    // ),
                    SizedBox(
                      height: 40,
                    ),
                    //services list
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "SERVICES",
                          style:
                          TextStyle(fontSize: 12, color: Color(0xff898A8F)),
                        ),
                      ],
                    ),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 3,
                        //padding: EdgeInsets.all(8.0),
                        itemBuilder: (index, context) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Hollywood smile",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff313450)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              )
                            ],
                          );
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Text(
                              "ALL SERVICES",
                              style:
                              TextStyle(fontSize: 12, color: Color(0xff3A58FC),),textAlign: TextAlign.start,
                            )),
                      ],
                    ),
                    //feedback
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "FEEDBACK",
                          style:
                          TextStyle(fontSize: 12, color: Color(0xff898A8F)),
                        ),
                      ],
                    ),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 1,
                        //padding: EdgeInsets.all(8.0),
                        itemBuilder: (index, context) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Very good . courteous and efficient staff.",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff313450)),
                                  ),

                                ],
                              ), SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Jitu Raut . 2 years ago",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff898A8F)),
                                  ),
                                ],
                              ),

                            ],
                          );
                        }),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Text(
                              "ALL FEEDBACK",
                              style:
                              TextStyle(fontSize: 12, color: Color(0xff3A58FC),),textAlign: TextAlign.start,
                            )),
                      ],
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}
