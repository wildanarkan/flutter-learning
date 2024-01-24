import 'package:flutter/material.dart';
import './pages/home.dart';

void main(){
  runApp(AppIntl());
}

class AppIntl extends StatelessWidget {
  const AppIntl({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}