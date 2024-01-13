import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 240, 184, 132),
          title: Text("Wchicken"),
        ),
        body: 
        Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child: Center(
              child: Image.asset("assets/image/wchicken.png"),
              )
            ),
        ),
      ),
    );
  }
}
