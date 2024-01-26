import 'package:flutter/material.dart';
import './pages/home.dart';

void main (){
  runApp(AppDropDownApi());
}

class AppDropDownApi extends StatelessWidget {
  const AppDropDownApi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}