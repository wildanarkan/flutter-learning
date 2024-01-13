import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 240, 184, 132),
            title: Text("Wchicken"),
          ),
          body: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            children: [
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Center(
                    child: Image.asset("assets/image/wchicken.png"),
                  )
                ),
            ],
          )),
    );
  }
}
