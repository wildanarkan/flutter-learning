import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/image_box.dart';

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
          body: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            children: [
              ImageBox(image: "assets/image/wchicken.png", background: Colors.amber, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.black, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.green, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.blue, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.red, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.brown, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.amber, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.black, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.green, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.blue, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.red, ),
              ImageBox(image: "assets/image/wchicken.png", background: Colors.brown, ),
            ],
          )),
    );
  }
}

