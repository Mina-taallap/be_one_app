import 'package:be_one_app/ui/home_Page/home_page.dart';
import 'package:flutter/material.dart';

class DoctorsPage extends StatefulWidget {
  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  List _docrors = [
    {
      "image": "assets/profile_icons/profile_icon.png",
      "name": "Selin Jose",
      "specilization": "MBBS,DOMS,MS - Ophthalmology",
      "title": "Ophthalmologist",
      "expericne": "26 years of experience",
      "openClose": "CLOSED TODAY",
      "time": "9:30AM - 08:00PM",
    },
    {
      "image": "assets/profile_icons/profile_icon.png",
      "name": "Selin Jose",
      "specilization": "MBBS,DOMS,MS - Ophthalmology",
      "title": "Ophthalmologist",
      "expericne": "26 years of experience",
      "openClose": "CLOSED TODAY",
      "time": "9:30AM - 08:00PM",
    },
    {
      "image": "assets/profile_icons/profile_icon.png",
      "name": "Selin Jose",
      "specilization": "MBBS,DOMS,MS - Ophthalmology",
      "title": "Ophthalmologist",
      "expericne": "26 years of experience",
      "openClose": "CLOSED TODAY",
      "time": "9:30AM - 08:00PM",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [backGround(), forGround()],
      ),
    );
  }

  Widget forGround() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: (){
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>HomePage(0)));
            },
            leading: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
            title: Text(
              "My Doctor",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          cardDoctor()
          // ListView.builder(
          //     scrollDirection: Axis.vertical,
          //     shrinkWrap: true,
          //     itemBuilder: (context, index) {
          //   return
          // })
        ],
      ),
    );
  }

  Widget backGround() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: BoxDecoration(
                color: Color(0xff6E78F7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18.0),
                    bottomRight: Radius.circular(18.0))),
          ),
        ],
      ),
    );
  }
  Widget cardDoctor(){
    return Column(
      children: List.generate(_docrors.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Image(
                            image:
                            AssetImage(_docrors[index]['image']),
                          ),
                        ),
                        Column(
                          children: [

                                Text(
                                  _docrors[index]['name'],softWrap: true,textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xff313450)),
                                ),
                            SizedBox(height: 10,),
                            Text(
                              _docrors[index]['specilization'],
                              style: TextStyle(fontSize: 13, color: Color(0xff313450)),
                            ),
                            Text(
                              _docrors[index]['title'],
                              style: TextStyle(fontSize: 13, color: Color(0xff313450)),
                            ),
                            Text(
                              _docrors[index]['expericne'],
                              style: TextStyle(fontSize: 13, color: Color(0xff313450)),
                            ),
                          ],
                        )
                      ],
                    ),
                  SizedBox(height: 30,),
                  ListTile(
                    trailing: CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xffd4d2d2),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                          radius: 12,
                          child: Icon(Icons.chat_bubble_outline,color: Color(0xff6E78F7),size: 15,)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,0.0),
                      child: Text(_docrors[index]["openClose"],textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.red),),
                    ),
                    title: Text(
                      _docrors[index]["time"],
                      style:
                      TextStyle(fontSize: 14, color: Color(0xff898A8F)),
                    ),
                  )


                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
