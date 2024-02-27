import 'package:flutter/material.dart';
import 'package:webview/webview1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text("Webview"),
      ),
      body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview1()));

                },child: Text("web1" ,style: TextStyle(color: Colors.white),),
                color: Colors.amber[700],
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                ),
                SizedBox(height: 10,),
                  MaterialButton(onPressed: (){

                },child: Text("web2" ,style: TextStyle(color: Colors.white),),
                color: Colors.amber[700],
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                ),
              ]
              ),
          ),
      ),
    );
  }
}
