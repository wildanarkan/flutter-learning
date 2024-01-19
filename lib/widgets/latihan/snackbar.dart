
import 'package:flutter/material.dart';

void main(){
  runApp(AppSnackbar());
}

class AppSnackbar extends StatelessWidget {
  const AppSnackbar({super.key});

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("SNACKBAR", 
        style: TextStyle(color: Colors.white)
        ,),),
        body: BodyPage(),
    );
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Data berhasil di hapus", 
          style: TextStyle(
            color: Colors.white),),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 1),
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.all(20),
          action: SnackBarAction(
            textColor: Colors.red,
            label: "Cancel", 
            onPressed: () {
            
          },
          )),
          );
      },
      child: Text("SHOW SNACKBAR")),
    );
  }
}