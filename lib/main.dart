import 'dart:math';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/image_box.dart';
import 'package:latihan_flutter/widgets/latihan/latihan.dart';
import 'package:latihan_flutter/widgets/latihan/latihan1.dart';
import './widgets/latihan/latihan2.dart';
import './widgets/latihan/latihan3.dart';
import './widgets/latihan/latihan4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: latihan4()
    );
  }
}

