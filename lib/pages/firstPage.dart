import 'package:flutter/material.dart';
import 'package:emonda_sl6/pages/secondPage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text(
          '第一页',
          style: TextStyle(fontSize: 22),
        ),
        elevation: 4,
      ),
      body: Center(
        child: MaterialButton(
            child: Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 55,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return SecondPage();
              }));
            }),
      ),
    );
  }
}
