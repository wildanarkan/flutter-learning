import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    required this.cabang,
    required this.image,
    required this.background,
  }) : super(key: key);

  final String cabang;
  final String image;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: background,
        child: Column(
          children: [
            Center(
              child: Text(cabang),
            ),
            Center(
              child: Image.asset(
                "$image",
                height: 150,
              ),
            )
          ],
        ));
  }
}
