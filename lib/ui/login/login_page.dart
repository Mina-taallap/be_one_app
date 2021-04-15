import 'package:be_one_app/functions/functions.dart';
import 'package:be_one_app/ui/login/widgets.dart';
import 'package:be_one_app/ui/verification/verification_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double higth = size.height;
    double width = size.width;

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(

            height: higth / 2,
            width: width,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                backgroundContainer(),
                forgroundContainer(context),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context)=>
              VerificationPage()));
            },
            child: Container(
                height: higth / 2,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    singInWithButton(
                        //function: pageRoute(context,VerificationPage()),
                        textColor: Color(0xff3F4079),
                        url: "",
                        loginWithText: "Mobile number",
                        // icon: "assets/cellphone-line.jpg",
                      ),

                    SizedBox(
                      height: 15,
                    ),
                    singInWithButton(
                      textColor: Colors.lightBlue,
                      url: "",
                      loginWithText: "FaceBook",
                      //icon: "assets/facebook-fill.jpg",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    singInWithButton(
                      textColor: Colors.red,
                      url: "",
                      loginWithText: "Google",
                      // icon: "assets/google-fill.jpg",
                    ),
                    SizedBox(height: higth/8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "By Continuing, you agree to terms and conditions",
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
  //
  // pageRoute(context,page){
  //   Navigator.push(context, new MaterialPageRoute(builder: (context)=>page));
  //
  // }

}
