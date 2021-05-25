import 'dart:convert';

import 'package:first_flutter_app/DetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/User.dart';
import 'package:http/http.dart' as http;

class MyApiDataInList extends StatefulWidget {
  const MyApiDataInList({Key key}) : super(key: key);

  @override
  _MyApiDataInListState createState() => _MyApiDataInListState();
}

class _MyApiDataInListState extends State<MyApiDataInList> {
  // _MyApiDataInListState() {
  //   print(this._getUser());
  // }
  Future<List<User>> _getUser() async {
    var data =
        await http.get(Uri.parse('https://randomuser.me/api/?results=10'));
    var jsonData = json.decode(data.body);
    print(jsonData);
    List<User> users = [];
    for (var u in jsonData['results']) {
      var fullname = u['name']['first'] + " " + u['name']['last'];
      var uuid = u['login']['uuid'];
      var email = u['email'];
      var picture = u['picture']['large'];

      User user = User(uuid, email, fullname, picture);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Employees'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/75.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'John Cena',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Your Profile'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.inbox, color: Colors.black),
                title: Text('Your Inbox'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.assessment, color: Colors.black),
                title: Text('Your Dashboard'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings, color: Colors.black),
                title: Text('Your Settings'),
              )
            ],
          ),
        ),
        body: Container(
          child: FutureBuilder(
            future: _getUser(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text('Loading...'),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8, top: 8),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(snapshot.data[index].image),
                          ),
                          title: Text(
                            snapshot.data[index].fullName,
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(snapshot.data[index].email),
                          trailing: Icon(Icons.arrow_right),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(snapshot.data[index])));
                          },
                        ),
                      );
                    });
              }
            },
          ),
        ),
      ),
    );
  }
}
