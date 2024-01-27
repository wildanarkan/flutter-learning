import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/dependency/controllers/data.dart';
import './pages/home.dart';

void main() {
  runApp(AppGetXDependency());
}

class AppGetXDependency extends StatelessWidget {

  final data = Get.lazyPut(() => DataControllers(),);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}