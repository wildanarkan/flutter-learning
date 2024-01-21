import 'package:flutter/material.dart';
import 'package:latihan_flutter/instagram/pages/profile.dart';

class AppInstagram extends StatelessWidget {
  const AppInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

