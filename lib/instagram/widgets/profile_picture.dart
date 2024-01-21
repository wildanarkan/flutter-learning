import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.amber]),
            borderRadius: BorderRadius.circular(80)),
      ),
      Container(
        height: 115,
        width: 115,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/image/wildankecil.png")),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(80),
            border: Border.all(color: Colors.white, width: 3)),
      ),
    ]);
  }
}