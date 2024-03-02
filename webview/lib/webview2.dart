import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Webview2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WebsviewState();
}

class WebsviewState extends State<Webview2> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool isInternetConnected = true;

  @override
  void initState() {
    super.initState();
     // Check internet connectivity
     checkInternetConnection();
  }
   Future<void> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          isInternetConnected = true;
        });
      }
    } on SocketException catch (_) {
      setState(() {
        isInternetConnected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
            title: Text("Webview"),
            backgroundColor: Colors.blue,
          ),
          body:  isInternetConnected
          ? WebView(
              initialUrl: 'https://nevonprojects.com/project-ideas/software-project-ideas/',
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              javascriptMode: JavascriptMode.unrestricted,
              onProgress: (int progress) {
                print("WebView is loading (progress : $progress%)");
              },
              navigationDelegate: (NavigationRequest request) {
                // Handle navigation requests if needed
                return NavigationDecision.navigate;
              },
              gestureNavigationEnabled: true,
            )
          : Center(
              child: Text('No internet connection!'),
            ),
      floatingActionButton: isInternetConnected
          ? FutureBuilder<WebViewController>(
              future: _controller.future,
              builder: (BuildContext context,
                  AsyncSnapshot<WebViewController> controller) {
                if (controller.hasData) {
                  return FloatingActionButton(
                    onPressed: () async {
                      // Example: Execute JavaScript code
                      await controller.data!.evaluateJavascript(
                          'alert("Hello from Flutter WebView")');
                    },
                    child: Icon(Icons.code),
                  );
                } else {
                  return Container();
                }
              },
            )
          : null,
    );
    
        
  }
}
