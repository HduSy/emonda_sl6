import 'package:flutter/material.dart';
import 'package:emonda_sl6/pages/home.dart';
import 'package:emonda_sl6/pages/wifi.dart';
import 'package:emonda_sl6/pages/map.dart';
import 'package:emonda_sl6/pages/adjust.dart';

class FlutterBottomNavigationBar extends StatefulWidget {
  _FlutterBottomNavigationBar createState() => _FlutterBottomNavigationBar();
}

class _FlutterBottomNavigationBar extends State<FlutterBottomNavigationBar> {
  int _currentIndex = 0;
  List<Widget> list;

  @override
  void initState() {
    // TODO: implement initState
    list = List();
    list..add(Home())..add(Adjust())..add(Map())..add(Wifi());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.lightBlue,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.lightBlue),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wifi,
                color: Colors.lightBlue,
              ),
              title: Text(
                'Http',
                style: TextStyle(color: Colors.lightBlue),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.adjust,
                color: Colors.lightBlue,
              ),
              title: Text(
                'Adjust',
                style: TextStyle(color: Colors.lightBlue),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.lightBlue,
              ),
              title: Text(
                'Map',
                style: TextStyle(color: Colors.lightBlue),
              ))
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
