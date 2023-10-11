import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(webapp());


class webapp extends StatelessWidget {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ajay Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ajay Portfolio"),
        ),
        body: Center(
          child: WebView(
            initialUrl:'https://creesdangoriya.w3spaces.com/',
            javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated:(WebViewController webViewController){
            _controller = webViewController;
          },
          ),
          ),
        ),
    );
  }
}