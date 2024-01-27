import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppGetXBottomSheet());
}

class AppGetXBottomSheet extends StatelessWidget {
  const AppGetXBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "GETX BOTTOMSHEET"),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  color: Colors.white,
                  height: 300,
                  child: ListView(
                    children: [
                      ListTile(leading: Icon(Icons.home), title: Text("Home"),),
                      ListTile(leading: Icon(Icons.home), title: Text("Home"),),
                      ListTile(leading: Icon(Icons.home), title: Text("Home"),),
                      ListTile(leading: Icon(Icons.home), title: Text("Home"),),
                    ],
                  ),
                )
              );
            },
            child: Text("SHOW BOTTOMSHEET")),
      ),
    );
  }
}
