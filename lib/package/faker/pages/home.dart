import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "FAKER"),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                  "https://picsum.photos/id/${870 + index}/200/300")),
          title: Text("${faker.person.name()}"),
          subtitle: Text("${faker.internet.email()}"),
        ),
      ),
    );
  }
}
