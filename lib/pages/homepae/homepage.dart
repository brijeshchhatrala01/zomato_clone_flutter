import 'package:flutter/material.dart';
import 'package:zomato_clone_flutter/pages/homepae/delivery/deliverypage.dart';
import 'package:zomato_clone_flutter/theme/colors.dart';

import '../dining/dining.dart';
import '../money/money.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List pages = [const DeliveryPage(), const DiningPage(), const MoneyPage()];

  int _selectedIndex = 0;

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: pages[_selectedIndex]);
  }
}

