import 'package:flutter/material.dart';
import 'package:emonda_sl6/widgets/each_view.dart';

class FlutterBottomFloatBtn extends StatefulWidget {
  _FlutterBottomFloatBtn createState() => _FlutterBottomFloatBtn();
}

class _FlutterBottomFloatBtn extends State<FlutterBottomFloatBtn> {
  List<Widget> _view_list;
  int _view_index = 0;

  @override
  void initState() {
    // TODO: implement initState
    _view_list = List();
    _view_list
      ..add(EachView('Home'))
      ..add(EachView('Wifi'))
      ..add(EachView('Adjust'))
      ..add(EachView('Map'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView('New Page');
          }));
        },
        tooltip: 'emonda sl6',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _view_index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.wifi,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _view_index = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.adjust,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _view_index = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.map,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _view_index = 3;
                });
              },
            )
          ],
        ),
      ),
      body: _view_list[_view_index],
    );
  }
}
