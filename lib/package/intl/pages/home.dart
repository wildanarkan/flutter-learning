import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "INTL"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("FORMAT TANGGAL :"),
            Text("${DateFormat.yMd().format(DateTime.now())}", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}