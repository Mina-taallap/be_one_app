import 'package:flutter/material.dart';

//import 'package:flutter_svg_provider/flutter_svg_provider.dart';
  class ToothDecayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    String description =
        "Tooth Decay Is The Destruction\n Of Your Tooth Enamel, The Hard, \n Outer Layer Of Your Teeth. It Can\n Be A Problem For Children,\nTeens And Adults. Plaque,"
        "\nA Sticky Film Of Bacteria,\nConstantly Formson Your Teeth."
        "\nWhen You Eat Or Drink Foods\nContaining Sugars, The Bacteria\n"
        "In Plaque Produce Acids\nThat Attacktooth Enamel.";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E78F7),
        centerTitle: true,
        title: Text(
          "Tooth Decay",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                // Image(
                //   width: 32,
                //   height: 32,
                //   image: Svg('assets/dental_clinic/fahed_logo.svg'),
                // ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/home_page/tooth_decay.jpg"),
                            fit: BoxFit.cover,
                          )),
                      width: width - 40,
                      height: height / 3),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 20, color: Color(0xff3F4079)),
                  ),
                ),
                SizedBox(height: 15),

                SizedBox(height: height/35,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 27,
                    child:
                    Image.asset("assets/home_page/dr_fahed_logo.png",)
                    ,
                  ),
                ),
                SizedBox(height: 15,)


                // Container(
                //   height:400,
                //   width: 400,
                //   decoration: BoxDecoration(
                //     image: DecorationImage()
                //   ),
                //   child: SvgPicture.asset("assets/home_page/dentalCare_image.svg",),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
