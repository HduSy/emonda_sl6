import 'package:flutter/material.dart';
import 'package:emonda_sl6/widgets/flutter_bottom_float_button.dart';
import 'package:emonda_sl6/widgets/flutter_bottom_navigation_bar.dart';
import 'package:emonda_sl6/pages/firstPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '底部浮动按钮',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: FirstPage(),
    );
  }
}
