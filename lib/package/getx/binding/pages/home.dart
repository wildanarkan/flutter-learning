import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "HOME"),
      body: Center(
        child: ElevatedButton(onPressed: ()=>Get.toNamed("/counter"), child: Text("COUNTER PAGE")),
      ),
    );
  }
}