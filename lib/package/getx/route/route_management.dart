import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    );
  }
}