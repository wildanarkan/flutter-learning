import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/image_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

List<Map<String, dynamic>> data = List.generate(
  10,
  (index) => {
    "text" : "Cabang ke - ${index+1}",
    "image" : "assets/image/wchicken.png",
    "color" : Color.fromARGB(
      255,
      200 + Random().nextInt(256),
      200 + Random().nextInt(256),
      200 + Random().nextInt(256),)
  } );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 240, 184, 132),
            title: Text("Wchicken"),
          ),
          body: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            children:
            data.map((e) =>
            ImageBox(
              cabang: e["text"],
              image: e["image"],
              background: e["color"]
              )).toList(),
          )),
    );
  }
}

