import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/dependency/controllers/data.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class NewPage extends StatelessWidget {

  final DataControllers data = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "NEW PAGE"),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${data.myData2['name']} - ${data.myData2["age"]}", style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}