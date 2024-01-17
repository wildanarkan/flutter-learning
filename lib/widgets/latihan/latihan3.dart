import 'dart:math';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/image_box.dart';

void main() {
  runApp(latihan3());
}

class latihan3 extends StatelessWidget {
  const latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 240, 184, 132),
              title: Text("Wchicken"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipOval(
                        child: Container(
                          height: 265,
                          width: 265,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(250 / 2),
                            border: Border.all(width: 5, color: Colors.white),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/wildankecil.png"))),
                      ),
                    ],
                  ),
                  Text("Ahmad Wildan Arkan", style:
                  TextStyle(fontSize: 30, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),)
                ],
              ),
            )));
  }
}
