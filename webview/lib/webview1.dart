import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Webview1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Webviewstate();
}

class Webviewstate extends State<Webview1> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.worldbank.org/en/country/bangladesh",
      appBar: AppBar(
        title: Text("webview 1"),
        backgroundColor: Colors.amber[700],
      ),
    );
  }
}
