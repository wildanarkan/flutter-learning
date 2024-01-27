import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/home.dart';

void main(){
  runApp(AppGetXStateSimple());
}

class AppGetXStateSimple extends StatelessWidget {
  const AppGetXStateSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}