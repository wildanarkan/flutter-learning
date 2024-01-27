import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import '../controllers/home_controllers.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "GETX WORKERS"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Terjadi Perubahan ${homeC.data}x",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) => homeC.changed(),
              decoration: InputDecoration(
                  labelText: "Data", border: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
  }
}
