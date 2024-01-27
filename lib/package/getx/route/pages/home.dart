import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/route/pages/page_2.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "HOME"),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(onPressed: (){Get.toNamed("/page_1");}, child: Text("PAGE 1")),
          ElevatedButton(onPressed: (){Get.to(PageDua());}, child: Text("PAGE 2")),
        ],
      ),
    );
  }
}
