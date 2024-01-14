import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/image_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 240, 184, 132),
            title: Text("Wchicken"),
          ),
          body: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
              ),
            itemBuilder: (context, index) => 
            ImageBox(
              cabang: "Cabang Ke - ${index+1}",
              image: "assets/image/wchicken.png",
              background: Color.fromARGB(
                255,
                100+Random().nextInt(256),
                100+Random().nextInt(256),
                100+Random().nextInt(256)
                )
              )
            ,)
      )
    );
  }
}

