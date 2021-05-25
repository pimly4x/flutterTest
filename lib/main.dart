import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_app/ApiData.dart';
import 'package:first_flutter_app/Bottomnavigation.dart';
// import 'package:first_flutter_app/Home.dart';
import 'package:first_flutter_app/MyCheckBoxRadioGroup.dart';
import 'package:first_flutter_app/MyDataTableDemo.dart';
import 'package:first_flutter_app/MyExpansionListDemo.dart';
import 'package:first_flutter_app/MyListDemo.dart';
import 'package:first_flutter_app/MySelectableText.dart';
import 'package:first_flutter_app/MyStackDemo.dart';
import 'package:first_flutter_app/MyTabBardemo.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/AnimateWidget.dart';
import 'package:first_flutter_app/CheesePizza.dart';
import 'package:first_flutter_app/ExtractArguementScreen.dart';
import 'package:first_flutter_app/Facebook.dart';
import 'package:first_flutter_app/Fries.dart';
import 'package:first_flutter_app/Twitter.dart';
import 'package:first_flutter_app/VegetablePizza.dart';
import 'package:first_flutter_app/WebViewApp.dart';

import 'Homepage.dart';
import 'MyGeolocationDemo.dart';
import 'MyModalBottomSheetDemo.dart';
import 'Screen0.dart';
import 'Screen1.dart';
import 'TextField.dart';

// main() {
//   runApp(MaterialApp(
//     home: Homepage(),
//     routes: {
//       '/firstscreen': (context) => Screen0(),
//       '/secondscreen': (context) => Screen1(),
//       ExtractArgumentScreen.routeName: (context) => ExtractArgumentScreen(),
//       Homepage.routeName: (context) => Homepage(),
//       VegetablePizza.routeName: (context) => VegetablePizza(),
//       CheesePizza.routeName: (context) => CheesePizza(),
//       Fries.routeName: (context) => Fries(),
//       Facebook.routeName: (context) => Facebook(),
//       Twitter.routeName: (context) => Twitter(),
//     },
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MainScreen(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: WebViewApp(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyBottomNavigationDemo(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyTabDemo(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyListTileDemo(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyApiDataInList(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyTableDataDemo(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MySelectableText(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyStackDemo(),
//   ));
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: new MyTextFieldDemo(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyCheckRadioGroup(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyModalBottomSheetDemo(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyGeolocationDemo(),
//   ));
// }

// firebase start
import 'package:first_flutter_app/Home.dart';
import 'package:first_flutter_app/login.dart';
import 'package:first_flutter_app/new_account.dart';
import 'package:first_flutter_app/service.dart';
import 'package:first_flutter_app/my_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Home(),
    routes: {
      'Home': (context) => Home(),
      'Login': (context) => Login(),
      'NewAccount': (context) => NewAccount(),
      'Service': (context) => Service(),
      'Firestore': (context) => MyCloud(),
    },
  ));
}
