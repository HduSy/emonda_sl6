import 'package:flutter/material.dart';
import 'package:emonda_sl6/widgets/flutter_bottom_float_button.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '底部浮动按钮',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: FlutterBottomFloatBtn(),
    );
  }
}