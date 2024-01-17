import 'package:flutter/material.dart';

void main(){
  runApp(AppStateful());
}

class AppStateful extends StatefulWidget {
  AppStateful({super.key});

  @override
  State<AppStateful> createState() => _AppStatefulState();
}

class _AppStatefulState extends State<AppStateful> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(199, 35, 100, 164),
          centerTitle: true,
          title: Text("Stateful")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$nilai",
                style: TextStyle(
                  fontSize: 60),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {
                      nilai--;
                      print(nilai);
                      setState(() {
                        
                      });
                    }, child: Icon(Icons.remove)),
                    ElevatedButton(onPressed: () {
                      nilai++;
                      print(nilai);
                      setState(() {
                        
                      });
                    }, child: Icon(Icons.add)),
                  ],)
              ]),)),
    );
  }
}