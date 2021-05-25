import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Service extends StatefulWidget {
  const Service({Key key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final DatabaseReference database =
      FirebaseDatabase.instance.reference().child("My_Service");

  sendData() {
    database
        .push()
        .set({'Name': 'Mike', 'Country': 'USA', 'City': 'New Delhi'});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Koenig Services',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Center(
                  child: Container(
                child: Text(
                  'Welcome To Koenig Solutions ',
                  style: TextStyle(fontSize: 20.0),
                ),
              )),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed: () => sendData(), child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
