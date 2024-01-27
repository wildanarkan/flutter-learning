import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/route/pages/page_5.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "PageEmpat"),
      body:  Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PageEmpat"),
          ElevatedButton(onPressed: () => Get.to(PageLima()), child: Text("Next"))
        ],
      )),
    );
  }
}