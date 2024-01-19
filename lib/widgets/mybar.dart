import 'package:flutter/material.dart';

class MyBar extends StatelessWidget implements PreferredSizeWidget {
  final String judul;
  final Color? warnaText;
  final Color? warnaBackground;

  MyBar({required this.judul, this.warnaText = Colors.white, this.warnaBackground = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: warnaBackground,
      centerTitle: true,
      title: Text(judul, style: TextStyle(color: warnaText),),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
