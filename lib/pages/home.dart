import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: Center(
        child: Text('home.dart',style: TextStyle(fontSize: 18),),
      ),
    );
  }
}