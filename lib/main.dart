import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(webapp());


class webapp extends StatelessWidget {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Title',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Your NavBar Title"),
        ),
        body: Center(
          child: WebView(
            initialUrl:'You.........URL.......Link',
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