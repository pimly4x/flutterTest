import 'package:flutter/material.dart';

class MyListTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Employees')),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Mr.Mark Angel'),
              subtitle: Text('Comedy Person '),
              trailing: Icon(Icons.delete),
              onTap: () => print('You have selected First Item'),
              dense: false,
              selected: true,
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Mr.John Cena'),
              subtitle: Text('Head Master '),
              trailing: Icon(Icons.share),
              onTap: () => print('You have selected second Item'),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Mr Sarfo'),
              subtitle: Text('Junior Developer'),
              trailing: Icon(Icons.ac_unit_sharp),
              onTap: () => print('You have selected third Item'),
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
