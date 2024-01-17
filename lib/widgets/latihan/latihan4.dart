import 'dart:math';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/image_box.dart';

void main() {
  runApp(latihan4());
}

class latihan4 extends StatelessWidget {
  const  latihan4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 240, 184, 132),
            title: Text("Wchicken"),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    if (index % 2 == 0) {
                      return Container(
                    width: 130,
                    height: 150,
                    color: Colors.amber,
                    margin: EdgeInsets.only(right: 20),
                  );
                    }else{
                      return Container(
                    width: 130,
                    height: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.only(right: 20),
                  );
                    }
                  
                },),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(20),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                  if(index % 2 == 0){
                    return Padding(
                      padding:  EdgeInsets.only(bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            color: Colors.blue
                            ),
                            SizedBox(height: 10),
                            Text("Hello ${index+1}",
                            style: TextStyle(fontSize: 25) ,)
                        ],
                      ),);
                  }else{
                     return Padding(
                      padding:  EdgeInsets.only(bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            color: Colors.amber
                            ),
                            SizedBox(height: 10),
                            Text("Hello ${index+1}",
                            style: TextStyle(fontSize: 25) ,)
                        ],
                      ),);
                  }
                },),
              ),
            ],
          )
      )
    );
  }
}

