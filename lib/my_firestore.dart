import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyCloud extends StatefulWidget {
  const MyCloud({Key key}) : super(key: key);

  @override
  _MyCloudState createState() => _MyCloudState();
}

class _MyCloudState extends State<MyCloud> {
  List<Widget> dataListWidget(AsyncSnapshot snapshot) {
    return snapshot.data.docs.map<Widget>((document) {
      return ListTile(
        title: Text(document['Name']),
        subtitle: Text(document['City']),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Cloud Firestore')),
        body: Container(
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection("customers").snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: dataListWidget(snapshot),
              );
            },
          ),
        ),
      ),
    );
  }
}
