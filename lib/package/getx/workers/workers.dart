import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/home.dart';

void main(){
  runApp(AppGetXWorkers());
}

class AppGetXWorkers extends StatelessWidget {
  const AppGetXWorkers({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}