import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import './home.dart';

class PageLima extends StatelessWidget {
  const PageLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "PageLima"),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PageLima"),
          ElevatedButton(onPressed: () => Get.offAll(HomePage()), child: Text("BAKC TO HOME"))
        ],
      )),
    );
  }
}