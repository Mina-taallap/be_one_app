import 'file:///D:/Flutter/FlutterApps/be_one_app/lib/ui/home_Page/widgets/home_widget/home_widget.dart';
import 'package:be_one_app/ui/booking/main_booking_page.dart';
import 'package:be_one_app/ui/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  int index=0;
  HomePage(this.index);
  @override

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var _currentIndex= widget.index;


  @override
  Widget build(BuildContext context) {

    List itemsIndexes=[
      HomeWidget(),
      BookingMainPage(),
      ProfilePage(),

    ];
    void _onItemTapped(int index) {
      setState(() {
        widget.index = index;
      });
    }
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_books_outlined),label: "Booking",),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Account",),
        ],
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff6E78F7),
      ),
      body:itemsIndexes[widget.index]

      ,);
  }





}
