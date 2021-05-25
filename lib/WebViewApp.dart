import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Koenig-solutions'),
      ),
      body: WebView(
        initialUrl: 'https://google.com/',
      ),
    );
  }
}
