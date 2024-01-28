import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/storage/controllers/login_controller.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class HomePage extends StatelessWidget {

  LoginController logC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "HomePage"),
      floatingActionButton: FloatingActionButton(onPressed: ()=>logC.logout() , child: Icon(Icons.logout)) ,
    );
  }
}