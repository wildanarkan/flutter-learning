import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppGetX());
}

class AppGetX extends StatelessWidget {
  const AppGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  // int data = 0;

  final Controller data = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "STATE GETX"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${data.data.value}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  data.decrement();
                }, child: Text("-")),
                ElevatedButton(onPressed: () {
                  data.increment();
                }, child: Text("+")),
              ],
            )
          ]),
      ),
    );
  }
}

class Controller extends GetxController{
  var data = 0.obs;
  increment() => data++;
  decrement() => data--;
}