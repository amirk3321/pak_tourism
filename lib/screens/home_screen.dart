import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pak_tourism/model/popular_cities_model.dart';
import 'package:pak_tourism/repository/repository.dart';
import 'package:pak_tourism/screens/pages/all%20places.dart';
import 'package:pak_tourism/screens/pages/home_page.dart';
import 'package:pak_tourism/screens/pages/map_page.dart';
import 'package:pak_tourism/screens/pages/my_trip_page.dart';
import 'package:pak_tourism/screens/pages/trip_details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _navIndex=0;
  List<Widget> get _pages => [HomePage(),AllPlacesPage(),MapPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _customNavBar(),
      body: _pages[_navIndex],
    );
  }





  Widget _customNavBar() {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.grey.shade200,
      currentIndex: _navIndex,
      items: <BottomNavigationBarItem>[

        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_sharp), label: "top"),
        BottomNavigationBarItem(icon: Icon(Icons.add_location), label: "location"),

      ],
      fixedColor: Colors.deepOrange,
      onTap: (index) {
        if (mounted)
          setState(() {
            _navIndex = index;
          });
      },
    );
  }
}
