import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import 'package:http/http.dart' as myhttp;

void main() {
  runApp(AppFuture());
}

class AppFuture extends StatelessWidget {
  const AppFuture({super.key});

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

  List<Map<String, dynamic>> allUser= [];

  Future getAllUser() async {
    try{
    var myresponse = await myhttp.get(Uri.parse("https://reqres.in/api/users?page=2"));
    List data = (json.decode(myresponse.body) as Map<String, dynamic>)["data"];
    data.forEach((element) {
      allUser.add(element); 
    });
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "FUTURE BUILDER"),
      body: FutureBuilder(
        future: getAllUser(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: Text("LOADING...."));
          }else{
            return ListView.builder(
            itemCount: allUser.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(allUser[index]["avatar"])),
              title: Text(allUser[index]["first_name"]),
              subtitle: Text(allUser[index]["email"]),
            ),);
          }
          
        }
      ),
    );
  }
}
