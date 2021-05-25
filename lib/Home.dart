import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Firebase Authentication',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'NewAccount');
                  },
                  child: Text(
                    'Create an Account',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  )),
              SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Login');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  )),
              SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Firestore');
                  },
                  child: Text(
                    'My Cloud Firestore',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
