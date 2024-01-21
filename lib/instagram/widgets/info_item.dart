import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    required this.angka,
    required this.judul,
    super.key,
  });

  final String angka;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(angka, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
        Text(judul, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}