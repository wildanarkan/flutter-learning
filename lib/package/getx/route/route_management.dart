import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/route/pages/page_1.dart';
import './pages/home.dart';

void main() {
  runApp(AppRouteManagement());
}

class AppRouteManagement extends StatelessWidget {
  const AppRouteManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [
        GetPage(name: "/page_1", page: () => PageSatu()),
        GetPage(name: "/home", page: () => HomePage())
        ],
    );
  }
}
