import 'package:flutter/material.dart';

void main() {
  runApp(AppDropdown());
}

class AppDropdown extends StatelessWidget {
  const AppDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List data = [
    {"judul": "Menu ke 1", "data": 1},
    {"judul": "Menu ke 2", "data": 2},
    {"judul": "Menu ke 3", "data": 3},
  ];

  late int dataAwal = data[0]['data'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<int>(
          value: dataAwal,
          items: data
              .map((e) => DropdownMenuItem(
                    child: Text("${e['judul']}"),
                    value: e['data'] as int,
                  ))
              .toList(),
          onChanged: (value) {
            print(value);
            setState(() {
              dataAwal = value!;
            });
          },
        ),
      ),
    );
  }
}
