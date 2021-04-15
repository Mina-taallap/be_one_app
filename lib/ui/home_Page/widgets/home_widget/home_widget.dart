import 'file:///D:/Flutter/FlutterApps/be_one_app/lib/ui/home_Page/widgets/home_widget/style.dart';
import 'package:be_one_app/ui/home_Page/home_taps/dental_care.dart';
import 'package:be_one_app/ui/home_Page/home_taps/dental_implant.dart';
import 'package:be_one_app/ui/home_Page/home_taps/tooth_decay.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double higth = size.height;
    double width = size.width;
    return Scrollbar(
      child: SingleChildScrollView(
        child: Container(
          height: higth,
          width: width,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              backContainer(),
              forgrounContainer(context),
            ],
          ),
        ),
      ),
    );
  }

  backContainer() {
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

  forgrounContainer(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double higth = size.height;
    double width = size.width;
    return Column(

      children: [
        SizedBox(height: 20,),
        Image.asset(
          "assets/logoo.png",
          width: 200,
          height: 200,
        ),
        rowImagesDesign(
            imagePath1: "assets/tooth.png",
            description1: "Dental",
            description11: "Care",
            imagePath2: "assets/dental-prosthesis.png",
            description2: "Tooth ",
            description22: "Decay ",
            imagePath3: "assets/molar-with-cavity.png",
            description3: "Dental ",
            description33: "Implant"),
        Card(
          elevation: 5,
          child: Container(
            height: higth / 7,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/card_image.png")),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          "Floratech produces and markets quality botanically-derived ingredients for the Personal Care and Cosmetics industry. Products include jojoba derivatives, oil-free jojoba esters, macadamia oil and derivatives, stable high-oleic sunflower seed oil, specialty particles, and emulsifiers for application in skin, lip, nail and hair care, color cosmetics, fragrance, body wash products and more.",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        )
      ],
    );
  }

  rowImagesDesign({
    imagePath1,
    description1,
    description11,
    imagePath2,
    description2,
    description22,
    imagePath3,
    description3,
    description33,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>DentalCarePage()));
                },
                child: Container(
                  decoration: decoration,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 33,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(imagePath1),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                  ),
                ),
              ),
              Text(
                "$description1",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: rowTxtStyle,
                maxLines: 2,
              ),
              Text(
                "$description11",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: rowTxtStyle,
                maxLines: 2,
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              InkWell(
            onTap: () {
    Navigator.push(
    context,
    new MaterialPageRoute(
    builder: (context) =>ToothDecayPage()));
    },
                child: Container(
                  decoration: decoration,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 33,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(imagePath2),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                  ),
                ),
              ),
              Text(
                "$description2",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: rowTxtStyle,
                maxLines: 2,
              ),
              Text(
                "$description22",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: rowTxtStyle,
                maxLines: 2,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>DentalImplantPage()));
                },
                child: Container(
                  decoration: decoration,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 33,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(imagePath3),
                        backgroundColor: Colors.white,
                        radius: 30),
                  ),
                ),
              ),
              Text(
                "$description3",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: rowTxtStyle,
                maxLines: 2,
              ),
              Text(
                "$description33",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: rowTxtStyle,
                maxLines: 2,
              )
            ],
          ),
        ),
      ],
    );
  }
}
