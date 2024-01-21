import 'package:flutter/material.dart';
import 'package:latihan_flutter/instagram/widgets/info_item.dart';
import 'package:latihan_flutter/instagram/widgets/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "wildandev",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(Icons.keyboard_arrow_down_rounded)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.add_box_outlined)),
          IconButton(
              color: Colors.black, onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(angka: "0", judul: "Postingan"),
                      InfoItem(angka: "11", judul: "Pengikut"),
                      InfoItem(angka: "39", judul: "Mengikuti"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
