import 'package:be_one_app/ui/home_Page/home_page.dart';
import 'package:flutter/material.dart';

class BookingPage3 extends StatefulWidget {
  @override
  _BookingPage3State createState() => _BookingPage3State();
}

class _BookingPage3State extends State<BookingPage3> {

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
    return SingleChildScrollView(
      child: Container(
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
                      Navigator.pop(context);
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
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Text("DATE & TIME",style: TextStyle(fontSize: 14,color: Color(0xff898A8F),fontWeight: FontWeight.bold),),
                            Text("Tomorrow, 9 Dec",style: TextStyle(fontSize: 12,color: Color(0xff313450),fontWeight: FontWeight.bold),),
                            Text("4.45PM",style: TextStyle(fontSize: 12,color: Color(0xff313450),fontWeight: FontWeight.bold),),
                          ],),
                          Column(children: [
                            Text("Consultation Fees".toUpperCase(),style: TextStyle(fontSize: 14,color: Color(0xff898A8F),fontWeight: FontWeight.bold),),
                            Text("600",style: TextStyle(fontSize: 12,color: Color(0xff313450),fontWeight: FontWeight.bold),),
                            Text(" "),

                          ],)
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      containerDesing("Name"),
                      SizedBox(height: 10,),
                      containerDesing("E-Mail"),
                      SizedBox(height: 10,),
                      containerDesing("Number"),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 5),
                          Text("By booking this appointment you agree to the ",style: TextStyle(fontSize:10,color: Color(0xff898A8F)),),
                          Text("T&C ",style: TextStyle(fontSize:10,color: Color(0xff3CB9C7)),),
                        ],
                      ),
                      SizedBox(
                        height: 60.0,
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context)=>HomePage(0)));
              },
              child: Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff6E78F7)),
                  child: Center(child: Text("Submit"))),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
  containerDesing(text){
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.height;

    return
      Container(
        height: height / 11.5,
        width: width -20,
        child: TextFormField(

          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              hintText: "$text",
              border: new OutlineInputBorder(
                borderRadius:
                new BorderRadius.circular(10.0),
                borderSide: new BorderSide(color: Color(0xffD6D6D6)),
              )),
        ),
      );
  }
}
