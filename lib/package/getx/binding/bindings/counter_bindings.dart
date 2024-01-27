import 'package:get/get.dart';
import 'package:latihan_flutter/package/getx/binding/controllers/counter_controller.dart';

class CounterBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> CounterController());
  }

}