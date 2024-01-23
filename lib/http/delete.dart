import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

void main() {
  runApp(AppDelete());
}

class AppDelete extends StatelessWidget {
  const AppDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
   const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "belom ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
      actions: [
        IconButton(onPressed: () async {
          var myresponse = await myhttp.get(Uri.parse("https://reqres.in/api/users/2"));
          Map<String, dynamic> mybody = json.decode(myresponse.body);
          setState(() {
          data = mybody["data"]["email"];
            
          });
        }, icon: Icon(Icons.get_app))
      ],
      title: Text(
        "DELETE DATA",
        style: TextStyle(color: Colors.white),
      ),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(data),),
        ElevatedButton(onPressed: () async {
          var myresponse = await myhttp.delete(Uri.parse("https://reqres.in/api/users/2"));
          setState(() {
            if(myresponse.statusCode == 204){
            print(myresponse.statusCode);
            data = "Data berhasil di hapus";
            }
          });
          
        }, child: Text("Hapus data"))
      ],
    ),);
  }
}
