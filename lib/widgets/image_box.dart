
import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    required this.image,
    required this.background,
  }):super(key: key);

  final String image;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        color: background,
        child: Center(
          child: Image.asset("$image"),
        )
      );
  }
}