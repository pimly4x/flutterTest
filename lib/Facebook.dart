import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Facebook extends StatelessWidget {
  static const routeName = "/facebook";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to Facebook"),
      ),
      body: WebView(
        initialUrl: 'https://www.facebook.com/',
      ),
    );
  }
}
