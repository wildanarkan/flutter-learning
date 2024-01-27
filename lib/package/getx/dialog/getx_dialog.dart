import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main(){
  runApp(AppGetXDialog());
}

class AppGetXDialog extends StatelessWidget {
  const AppGetXDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "GETX DIALOG"),
      body: Center(
        child: ElevatedButton(onPressed: (){Get.defaultDialog(title: "JUDUL DIALOG", middleText: "CONTENT DIALOG");}, child: Text("SHOW DIALOG")),
      ),
    );
  }
}