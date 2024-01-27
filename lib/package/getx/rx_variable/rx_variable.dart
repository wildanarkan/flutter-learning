import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/home.dart';

void main(){
  runApp(AppRxVariable());
}

class AppRxVariable extends StatelessWidget {
  const AppRxVariable({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}