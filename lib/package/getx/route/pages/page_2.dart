import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/route/pages/page_3.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "PageDua"),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PageDua"),
          ElevatedButton(onPressed: () => Get.to(PageTiga()), child: Text("Next"))
        ],
      )),
    );
  }
}
