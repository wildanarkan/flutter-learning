import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/dependency/controllers/data.dart';
import 'package:latihan_flutter/package/getx/dependency/pages/new_page.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class HomePage extends StatelessWidget {

  // final data = Get.put(DataControllers());
  final DataControllers data = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "Home Page"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${data.myData['name']} - ${data.myData["age"]}", style: TextStyle(fontSize: 20),),
            ElevatedButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPage(),)), child: Text("Next"))
          ],
        ),
      ),
    );
  }
}