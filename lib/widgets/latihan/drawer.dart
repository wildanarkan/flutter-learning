import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main(){
  runApp(AppDrawer());
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

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
      appBar: MyBar(judul: "DRAWER"),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Text("DASHBOARD",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),),
              padding: EdgeInsets.all(10),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero ,
                  children: [
                    ListTile(
                onTap: () => print("HOME"),
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("PROFILE"),
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("SETTING"),
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("HOME"),
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("PROFILE"),
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("SETTING"),
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("HOME"),
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("PROFILE"),
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("SETTING"),
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("HOME"),
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("PROFILE"),
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("SETTING"),
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("HOME"),
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("PROFILE"),
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              ListTile(
                onTap: () => print("SETTING"),
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
                  ],
              ),
            )
          ]),
      ),
    );
  }
}