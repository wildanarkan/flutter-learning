import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/route/pages/page_4.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "PageTiga"),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PageTiga"),
          ElevatedButton(onPressed: () => Get.to(PageEmpat()), child: Text("Next"))
        ],
      )),
    );
  }
}