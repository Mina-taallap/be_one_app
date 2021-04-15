import 'package:flutter/material.dart';

//import 'package:flutter_svg_provider/flutter_svg_provider.dart';
class DentalImplantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    String description =
        "A dental implant is a metal post that\n"
        " replaces the root portion of a missing\n"
        "tooth. An artificial tooth (crown) is\nplaced on an extension of the post"
        "\n(abutment) on the dental implant,\n  giving you the look of a real tooth.";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6E78F7),
        centerTitle: true,
        title: Text(
          " Dental Implant",
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
                            image: AssetImage("assets/home_page/dental_implant.jpg"),
                            fit: BoxFit.cover,
                          )),
                      width: width - 40,
                      height: height / 3),
                ),

                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 20, color: Color(0xff3F4079)),
                    ),
                  ),
                ),
                SizedBox(height: height/10,),
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
