import 'package:flutter/material.dart';

void main(){
  runApp(AppDialog());
}

class AppDialog extends StatelessWidget {
  const AppDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestDialog(),
    );
  }
}

class TestDialog extends StatelessWidget {
  const TestDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DIALOG", 
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                  title: Text("Test Dialog"),
                  content: Text("Saya sedang mencoba menampilkan dialog, tulisan ini adalah bagian dari content dialog"),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      } , 
                      child: Text("Cancel")),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      } , 
                      child: Text("Oke"))
                      ]),);
            },
            child: Text("Show Dialog")),
        ));
  }
}