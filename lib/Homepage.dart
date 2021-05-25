import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CheesePizza.dart';
import 'Facebook.dart';
import 'Fries.dart';
import 'Twitter.dart';
import 'VegetablePizza.dart';

class Homepage extends StatelessWidget {
  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WOW Pizza"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Facebook.routeName);
            },
            child: Image(
              color: Colors.white,
              width: 24,
              height: 24,
              image: AssetImage("images/facebook.png"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Twitter.routeName);
            },
            child: Image(
              color: Colors.white,
              width: 24,
              height: 24,
              image: AssetImage("images/twitter.png"),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
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
                child: Image(image: AssetImage("images/pizza.jpg")),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                    "Hi! Welcome to Wow Pizza. We offer the best in Pizza and Fries for the whole world. We will deliver no matter where you are."),
              )
            ],
          ),
        ),
      ),
    );
  }
}
