import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppBottomSheet());
}

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "BOTTOM SHEET"),
      body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              textStyle: TextStyle(fontSize: 18)),
        onPressed: () {
          showModalBottomSheet(
            isDismissible: false,
            context: context, 
            builder: (context) => 
            SizedBox(
              height: 250, 
              child: ListView(
                children: [
                  ListTile(
                    onTap: () => print("TELEPON"),
                    title: Text("Telepon"),
                    leading: Icon(Icons.phone),
                    ),
                  ListTile(
                    onTap: () => print("LOKASI"),
                    title: Text("Lokasi"),
                    leading: Icon(Icons.location_on_rounded),
                    ),
                  ListTile(
                    onTap: () => print("WAKTU"),
                    title: Text("Waktu"),
                    leading: Icon(Icons.access_time_outlined),
                    ),
                    ListTile(
                    onTap: () => Navigator.pop(context),
                    title: Text("Cancel"),
                    leading: Icon(Icons.cancel),
                    ),
                ],
              ),),);
        },
        child: Text("SHOW BOTTOM SHEET"),
      )),
    );
  }
}
