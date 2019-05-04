import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text(
          '第二页',
          style: TextStyle(fontSize: 22),
        ),
        elevation: 4,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
            child: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 55,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
    );
  }
}
