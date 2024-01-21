import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import 'package:http/http.dart' as myhttp;

void main(){
  runApp(AppGet());
}

class AppGet extends StatelessWidget {
  const AppGet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  late String id;
  late String email;
  late String name;

  @override
  void initState() {
    id = "";
    email = "";
    name = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "GET DATA"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID : $id"),
            Text("email : $email"),
            Text("name : $name"),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () async {
                var myresponse = await myhttp.get(Uri.parse("https://reqres.in/api/users/3"));
                Map<String,dynamic> data = json.decode(myresponse.body) as Map<String,dynamic>;
                print(myresponse.body);
                setState(() {
                  id = data["data"]["id"].toString();
                  email = data["data"]["email"].toString();
                  name = "${data["data"]["first_name"].toString()} ${data["data"]["last_name"].toString()}";
                });
              }, 
              child: Text("Get Data"))
          ]),
      ),
    );
  }
}