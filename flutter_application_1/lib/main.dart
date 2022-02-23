import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num = 40;
    String str = "flutter";
    double val = 40;
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("you will took $val days to learn $str"),
          ), 
        ),
      ),
    );
  }
}
