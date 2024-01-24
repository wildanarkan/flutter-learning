import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppAvatarGlow());
}

class AppAvatarGlow extends StatelessWidget {
  const AppAvatarGlow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyBar(judul: "AVATAR GLOW"),
        body: Center(
          child: AvatarGlow(
            glowRadiusFactor: 0.5,
            glowCount: 3,
            glowColor: Colors.blue,
            child: Material(
              // elevation: ,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                backgroundImage: AssetImage("assets/image/wildankecil.png"),
                radius: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
