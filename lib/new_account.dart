import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewAccount extends StatefulWidget {
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  String email;
  String password;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New Account'),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'New User Account',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      SizedBox(
                        width: 220.0,
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          style: TextStyle(fontSize: 20.0, color: Colors.blue),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.red,
                          decoration:
                              InputDecoration(hintText: 'e.g. abc@gmail.com'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      SizedBox(
                        width: 220.0,
                        child: TextField(
                          obscureText: true,
                          onChanged: (value) {
                            password = value;
                          },
                          style: TextStyle(fontSize: 20.0, color: Colors.blue),
                          cursorColor: Colors.red,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () async {
                          try {
                            final newuser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            if (newuser != null) {
                              Navigator.pushNamed(context, 'Home');
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text(
                          'Create',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
