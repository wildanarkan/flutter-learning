import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "GETX STATE SIMPLE"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(builder: (controller) => Text("${homeC.angka}", style: TextStyle(fontSize: 40),),),
            ElevatedButton(
                onPressed: () {
                  homeC.tambah();
                },
                child: Text("TAMBAH DATA")),
            ElevatedButton(
                onPressed: () {
                  homeC.refreshTampilan();
                },
                child: Text("REFRESH TAMPILAN"))
          ],
        ),
      ),
    );
  }
}
