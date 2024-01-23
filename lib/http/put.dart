import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppPut());
}

class AppPut extends StatelessWidget {
  const AppPut({super.key});

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
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilData = "Belom ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "PUT/PATCH DATA"),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Name"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: jobC,
            autocorrect: false,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: "Job"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                //http.put untuk replace, http.patch untuk update
                var myresponse = await myhttp.patch(
                    Uri.parse("https://reqres.in/api/users/1"),
                    body: {"name": nameC.text, "job": jobC.text});
                Map<String, dynamic> data =
                    json.decode(myresponse.body) as Map<String, dynamic>;

                print(data);

                setState(() {
                  hasilData = "${data["name"]} - ${data["job"]}";
                });
              },
              child: Text(
                "POST",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero)))),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Text(hasilData)
        ],
      ),
    );
  }
}
