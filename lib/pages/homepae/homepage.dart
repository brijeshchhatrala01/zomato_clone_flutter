import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:zomato_clone_flutter/pages/homepae/delivery/deliverypage.dart';
import 'package:zomato_clone_flutter/theme/colors.dart';
import 'dining/dining.dart';
import 'money/money.dart';

//homepage widget
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //list of different pages
  List<Widget> pages = [
    const DeliveryPage(),
    const DiningPage(),
    const MoneyPage()
  ];

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  //default index page
  int _selectedIndex = 0;

  //change page method
  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Position object to access long lat
  Position? position;

  //get location permission if not granted
  void getLocation() async {
    var permissionLocation = await Permission.location.status;
    print(permissionLocation);
    if(permissionLocation.isDenied){
      print('get');
      await Permission.location.request();
      position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            unselectedItemColor: kGrey,
            onTap: changePage,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.delivery_dining), label: "Delivery"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.room_service), label: "Dining"),
              BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Money"),
            ]),
        //show body according to selected page
        body: pages[_selectedIndex]);
  }
}
