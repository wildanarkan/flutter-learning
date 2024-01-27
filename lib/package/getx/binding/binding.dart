import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/binding/controllers/counter_controller.dart';
import 'package:latihan_flutter/package/getx/binding/pages/counter.dart';
import './pages/home.dart';

void main() {
  runApp(AppBinding());
}

class AppBinding extends StatelessWidget {
  const AppBinding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        GetPage(
          name: "/counter", 
          page: () => CounterPage(), 
          bindings: [
            BindingsBuilder.put(() => CounterController())
          ]
          ),
          
          ],
    );
  }
}
