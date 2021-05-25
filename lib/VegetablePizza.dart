import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CheesePizza.dart';
import 'Fries.dart';

class VegetablePizza extends StatelessWidget {
  static const routeName = "/vegetablepizza";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vegetable Pizza"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, VegetablePizza.routeName);
                      },
                      child: Text("Vegetable Pizza")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CheesePizza.routeName);
                      },
                      child: Text("Cheese Pizza")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Fries.routeName);
                      },
                      child: Text("Fries")),
                ],
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Image(image: AssetImage("images/image3.jpg")))
            ],
          ),
        ),
      ),
    );
  }
}
