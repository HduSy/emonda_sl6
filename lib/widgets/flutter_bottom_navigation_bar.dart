import 'package:flutter/material.dart';
import 'package:emonda_sl6/pages/home.dart';
import 'package:emonda_sl6/pages/wifi.dart';
import 'package:emonda_sl6/pages/map.dart';
import 'package:emonda_sl6/pages/adjust.dart';

class FlutterBottomNavigationBar extends StatefulWidget {
  _FlutterBottomNavigationBar createState() => _FlutterBottomNavigationBar();
}

class _FlutterBottomNavigationBar extends State<FlutterBottomNavigationBar> {
  final _FlutterBottomNavigationColor = Colors.lightBlue;
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
                color: _FlutterBottomNavigationColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: _FlutterBottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wifi,
                color: _FlutterBottomNavigationColor,
              ),
              title: Text(
                'Http',
                style: TextStyle(color: _FlutterBottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.adjust,
                color: _FlutterBottomNavigationColor,
              ),
              title: Text(
                'Adjust',
                style: TextStyle(color: _FlutterBottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: _FlutterBottomNavigationColor,
              ),
              title: Text(
                'Map',
                style: TextStyle(color: _FlutterBottomNavigationColor),
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
