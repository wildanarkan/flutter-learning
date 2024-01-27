import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "PageSatu"),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PageSatu"),
          ElevatedButton(onPressed: ()=> Get.back(), child: Text("Back"))
        ],
      )),
    );
  }
}
