import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import './pages/home.dart';

void main() {
  runApp(AppFaker());
}

class AppFaker extends StatelessWidget {
  const AppFaker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

