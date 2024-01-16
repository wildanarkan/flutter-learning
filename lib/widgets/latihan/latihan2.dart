import 'dart:math';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/image_box.dart';

void main() {
  runApp(latihan2());
}

class latihan2 extends StatelessWidget {
  const  latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 240, 184, 132),
            title: Text("Wchicken"),
          ),
          body: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: 50,
            itemBuilder: (context, index) => Padding(
                padding:  EdgeInsets.only(bottom: 25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft ,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://picsum.photos/id/${777 + index}/200/300",
                        ))),
                    // color: Colors.grey[400],
                  
                  child:
                  Text("Hello ${index+1}",
                  
                  style:
                  TextStyle(fontSize: 25, color: Colors.white),),
                      
                      ),)         
            )
      )
    );
  }
}

