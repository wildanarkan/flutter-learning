import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/storage/controllers/login_controller.dart';
import './pages/login.dart';
import './pages/home.dart';

// Tambahkan async dan await GetStorage.init(); // pada main.dart
void main() {
  runApp(AppGetXStorage());
}

class AppGetXStorage extends StatelessWidget {
  const AppGetXStorage({super.key});


  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>LoginController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/login", 
          page: () => LoginPage(),
          ),
        GetPage(
          name: "/home", 
          page: () => HomePage(),
          ),
      ],
    );
  }
}