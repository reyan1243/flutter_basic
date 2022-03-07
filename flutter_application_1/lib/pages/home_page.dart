import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num = 40;
    String str = "flutter";
    double val = 42;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rand App"),
        titleSpacing: 150,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("you will took $val days to learn $str",
          textScaleFactor: 1.5,
          ),
        ),
      ),
    );
  }
}
