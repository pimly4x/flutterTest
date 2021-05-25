import 'package:flutter/material.dart';

class MyBottomNavigationDemo extends StatefulWidget {
  @override
  _MyBottomNavigationDemoState createState() => _MyBottomNavigationDemoState();
}

class _MyBottomNavigationDemoState extends State<MyBottomNavigationDemo> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Camera'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Bottom Navigation Bar")),
          body: tabs[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 30,
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.blue,
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  backgroundColor: Colors.blue,
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt),
                  backgroundColor: Colors.blue,
                  label: 'Camera'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.blue,
                  label: 'Profile'),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          )),
    );
  }
}
