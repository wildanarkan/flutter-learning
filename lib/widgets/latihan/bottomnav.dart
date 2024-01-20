import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppBottomNav());
}

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;
  List showWidget = [
    Center(
        child: Text("HOME"),
      ),
    Center(
        child: Text("CHAT"),
      ),
    Center(
        child: Text("CART"),
      ),
    Center(
        child: Text("PROFILE"),
      ),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "BOTTOM NAVBAR"),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.brown[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
          index = value;
            
          });
        },
          items: [
            BottomNavigationBarItem(
              label: "HOME",
              icon: Icon(Icons.home)),
              BottomNavigationBarItem(
              label: "CHAT",
              icon: Icon(Icons.message)),
            BottomNavigationBarItem(
              label: "CART",
              icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(
              label: "PROFILE",
              icon: Icon(Icons.account_circle)),
              ]) ,
      
    );
  }
}
