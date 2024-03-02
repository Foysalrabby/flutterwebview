import 'package:flutter/material.dart';


class Webview2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WebsviewState();
}

class WebsviewState extends State<Webview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
            title: Text("Webview"),
            backgroundColor: Colors.blue,
          ),
          body: Text("web"),
     );
        
  }
}
