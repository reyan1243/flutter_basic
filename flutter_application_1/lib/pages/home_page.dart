import 'package:flutter/material.dart';
import '../model/catalog.dart';
import '../widgets/drawer.dart';
import "../widgets/item_widget.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int num = 40;
    // String str = "flutter";
    // double val = 42;
    final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 150,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
    );
  }
}
