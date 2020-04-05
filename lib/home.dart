import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:deviley_prod/chat.dart';
import 'package:deviley_prod/favourite.dart';
import 'package:deviley_prod/homepage.dart';
import 'package:deviley_prod/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController ;
  PageController _pageController2;
  int _currentIndex = 0;
  final List _children = [
    HomePage(),
    Chat(),
    Favourite(),
    Profile()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _pageController2 = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    _pageController2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        curve: Curves.linearToEaseOut,
        onItemSelected: (index){
          setState(() {
            _currentIndex = index;

          });
        },
        selectedIndex: _currentIndex,
        items: [
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
            activeColor: Colors.pink[600],
            inactiveColor: Colors.pink[300],
          ),
          BottomNavyBarItem(
            title: Text('Chat'),
            icon: Icon(Icons.chat),
            activeColor: Colors.pink[600],
            inactiveColor: Colors.pink[300],
          ),
          BottomNavyBarItem(
            title: Text('Favourite'),
            icon: Icon(Icons.favorite),
            activeColor: Colors.pink[600],
            inactiveColor: Colors.pink[300],
          ),
          BottomNavyBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.perm_identity),
            activeColor: Colors.pink[600],
            inactiveColor: Colors.pink[300],
          )
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
