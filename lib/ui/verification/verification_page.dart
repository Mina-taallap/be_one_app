import 'package:be_one_app/ui/home_Page/home_page.dart';
import 'package:be_one_app/ui/verification/verfication_code_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.height;
    debugPrint("height=$height width=$width ");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Image.asset(
                    "assets/exit_icoon.png",
                    width: width / 7,
                    height: height / 7,
                  ),
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "assets/verification.png",
                width: width / 3,
                height: height / 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(

                "Enter your number we will send you the otp to verify later ",
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
                softWrap: true,
                textAlign: TextAlign.center
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/3.5,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Card(
          //semanticContainer: true,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          //SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: height / 11,
                              width: width / 11,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "+20",
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      borderSide: new BorderSide(),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              flex: 3,
                              child: Container(
                                height: height / 11,
                                width: width / 11,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.verified,
                                        color: Colors.green,
                                      ),
                                      hintText: "987654321",
                                      border: new OutlineInputBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                        borderSide: new BorderSide(),
                                      )),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {

                          Navigator.push(context, new MaterialPageRoute(builder: (contex)=>
                          HomePage(0)));
                        },
                        child: Container(
                          width: 200,
                          padding: EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff6E78F7)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image.asset(icon,width: 15,),
                              // SizedBox(width: 5,),
                              Text(
                                "Submit",
                                // AppLocalizations.of(context).translate("sign_in"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
