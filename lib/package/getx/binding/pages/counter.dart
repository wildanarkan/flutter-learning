import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import '../controllers/counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterController data = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "COUNTER PAGE"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${data.data}",
                  style: TextStyle(fontSize: 20),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => data.kurang(), child: Text("-")),
                ElevatedButton(
                    onPressed: () => data.tambah(), child: Text("+")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
