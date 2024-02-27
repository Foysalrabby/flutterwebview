import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Webview2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WebsviewState();
}

class WebsviewState extends State<Webview2> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        url: "https://nevonprojects.com/project-ideas/software-project-ideas/",
        appBar: AppBar(
          title: Text("Knoledage Hub"),
          backgroundColor: Colors.blue),
          withZoom: true,
          withJavascript: true,
          scrollBar: true,
          initialChild: Center(child: Text("loading")),
          bottomNavigationBar:Padding(
            padding: EdgeInsets.all(14),
            child: Text("Footer"),
            
            ) ,
            persistentFooterButtons: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.balance),
                ),
              )
            ],
        );
        
  }
}
