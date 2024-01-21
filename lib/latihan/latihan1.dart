import 'package:flutter/material.dart';

void main() {
  runApp(latihan1());
}

class latihan1 extends StatelessWidget {
  const latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 240, 184, 132),
              title: Text("Wchicken"),
            ),
            body: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: 50,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 150, color: Colors.blue),
                        SizedBox(height: 10),
                        Text(
                          "Hello ${index + 1}",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 150, color: Colors.amber),
                        SizedBox(height: 10),
                        Text(
                          "Hello ${index + 1}",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  );
                }
              },
            )));
  }
}
