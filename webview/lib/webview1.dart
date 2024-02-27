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
      withZoom: true,
      withJavascript: true,
      withLocalStorage: true,
      initialChild: Center(child: Container(child: Text("Loading"))), //not use anymore of course use center
      bottomNavigationBar:Padding(
        padding:EdgeInsets.all(10),
        child: Text("this is footer"),
         ) ,
        persistentFooterButtons: [
          CircleAvatar(
            backgroundColor: Colors.amber[900],
            child: Text("btn1"),
          ),
           CircleAvatar(
            backgroundColor: Color.fromARGB(255, 70, 33, 5),
            child: Text("btn2"),
          ),
        ],
    );
  }
}
