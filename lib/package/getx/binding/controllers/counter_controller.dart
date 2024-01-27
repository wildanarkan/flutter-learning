import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt data = 0.obs;

  void tambah()=> data++;
  void kurang()=> data--;
}