import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    required this.judul,
    super.key,
  });

  final String judul;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    border: Border.all(width: 3, color: Colors.white),
                    image: DecorationImage(
                        image: AssetImage("assets/image/wildankecil.png"))),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(judul)
        ],
      ),
    );
  }
}