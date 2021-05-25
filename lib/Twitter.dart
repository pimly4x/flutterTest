import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Twitter extends StatelessWidget {
  static const routeName = "/twitter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to Twitter"),
      ),
      body: WebView(
        initialUrl: 'https://www.twitter.com/',
      ),
    );
  }
}
