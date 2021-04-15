
import 'package:flutter/material.dart';

Widget backgroundContainer() {
  return Opacity(
    opacity: 0.4,
    child: Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft:Radius.circular(25)),
          image: DecorationImage(
              image: AssetImage("assets/login_image.jpg"),fit: BoxFit.cover
          )
      ),
    ),
  );
}
Widget forgroundContainer(BuildContext context){
  return Align(alignment: Alignment.bottomCenter,
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff6E78F7).withOpacity(0.3),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft:Radius.circular(25)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logoo.png",width: 320,height: 320,),
        ],

      ),
    ),);
}
Widget singInWithButton({url,loginWithText,icon,textColor,function}){
  return    RaisedButton(

    padding: EdgeInsets.all(0.0),
    onPressed:(){},
    child: Container(
      width: 200,
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Image.asset(icon,width: 15,),
          // SizedBox(width: 5,),
           Text(
            loginWithText,
            // AppLocalizations.of(context).translate("sign_in"),
            textAlign: TextAlign.center,
            style:
            TextStyle(fontSize: 20, color: textColor),
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Color(0xffECECEC)),
      borderRadius: BorderRadius.circular(18),
    ),
  );
}
