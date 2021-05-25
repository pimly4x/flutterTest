import 'package:first_flutter_app/ScreenArgument.dart';
import 'package:flutter/material.dart';

class ExtractArgumentScreen extends StatelessWidget {
  static const routeName = '/extractArgument';

  @override
  Widget build(BuildContext context) {
    //title message
    final args = ModalRoute.of(context).settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args.message),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Approve');
                },
                child: Text('Approve'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Reject');
                },
                child: Text('Reject'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
