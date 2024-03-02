import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:webview/webview2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //not make Slpash scrren use plagin animated_splash_screen: ^1.3.0
      home: AnimatedSplashScreen(
        splash:Image.asset("assets/images/scanenr.gif") ,
        //duration:5000
        backgroundColor: Colors.amber.shade700,
        splashTransition: SplashTransition.scaleTransition,
        nextScreen:Webview2() ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//           appBar: AppBar(
//             title: Text("Webview"),
//             backgroundColor: Colors.blue,
//           ),
//           body: Text("hello"),
//     );
//   }
// }
