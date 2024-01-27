import 'package:get/get.dart';

class HomeController extends GetxController{
  int angka = 0;

  void tambah(){
    angka++;
  }

  void refreshTampilan(){
    update();
  }
}