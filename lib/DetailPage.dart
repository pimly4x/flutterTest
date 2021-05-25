import 'package:flutter/material.dart';
import 'package:first_flutter_app/User.dart';

class DetailPage extends StatelessWidget {
  User user;
  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.fullName,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Image(
            image: NetworkImage(user.image),
          ),
        ),
      ),
    );
  }
}
