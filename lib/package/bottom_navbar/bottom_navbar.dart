import 'package:flutter/material.dart';
import './pages/home.dart';

void main(){
  runApp(AppConvexBottom());
}

class AppConvexBottom extends StatelessWidget {
  const AppConvexBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}