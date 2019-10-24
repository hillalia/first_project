import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() =>runApp(HomeRoute());

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion',
      home: BottomFancyNavigation(),
    );
  }
}

class BottomFancyNavigation extends StatefulWidget {
  @override
  _BottomFancyNavigationState createState() => _BottomFancyNavigationState();
}

class _BottomFancyNavigationState extends State<BottomFancyNavigation> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text(
          "Fashion",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.pink[100],
        inactiveIconColor: Colors.red[300],
        tabs: [
          TabData(iconData: Icons.home, title: 'Home'),
          TabData(iconData: Icons.shopping_basket, title: 'Brand'),
          TabData(iconData: Icons.store, title: 'Store')
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentpage = position;
          });
        },
      ),
      body: Container(
        child: Center(
          child: Text(
            currentpage.toString(),
            textScaleFactor: 10.0,
          ),
        ),
      ),
    );
  }
}
