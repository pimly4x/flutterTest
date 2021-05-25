import 'package:flutter/material.dart';
import 'package:first_flutter_app/MyTab.dart';

// class MyTabDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('WhatsApp'),
//         ),
//         body: DefaultTabController(
//           length: 4,
//           child: Column(
//             children: [
//               Container(
//                 child: TabBar(
//                   labelColor: Colors.black,
//                   indicatorColor: Colors.red,
//                   labelStyle: TextStyle(fontWeight: FontWeight.bold),
//                   tabs: [
//                     Tab(
//                       icon: Icon(Icons.camera_alt),
//                     ),
//                     Tab(
//                       text: 'CHAT',
//                     ),
//                     Tab(
//                       text: 'STATUS',
//                     ),
//                     Tab(
//                       text: 'CALLS',
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   child: TabBarView(
//                     children: [
//                       Container(padding: EdgeInsets.all(20), child: Camera()),
//                       Container(
//                         padding: EdgeInsets.all(20),
//                         child: Chat(),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(20),
//                         child: Status(),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(20),
//                         child: Call(),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyTabDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.red,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: 'CHAT',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Camera(),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Chat(),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Status(),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Call(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
