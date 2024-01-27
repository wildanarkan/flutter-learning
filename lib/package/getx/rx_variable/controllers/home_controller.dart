import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt dataInt = 0.obs;
  RxString dataString = "Wildan".obs;
  RxBool kondisi = false.obs;
  RxMap<String, dynamic> dataMap = {
    "id": 1,
    "nama": "Wildan",
    "email": "cillmystic@gmail.com"
  }.obs;

  void tambahDataInt(){
    dataInt++;
  }
  void kurangiDataInt(){
    dataInt--;
  }

  void ubahNamaLengkap(){
    dataString.value = "Wildan Arkan";
  }
  void ubahNamaPanggilan(){
    dataString.value = "Wildan";
  }

  void ubahKondisi(){
    kondisi.toggle();
  }

  void ubahDataMap(){
    if(dataMap["nama"] == "Wildan"){

    dataMap["nama"] = "Wildan Arkan";
    }else{
    dataMap["nama"] = "Wildan";

    }
  }
}