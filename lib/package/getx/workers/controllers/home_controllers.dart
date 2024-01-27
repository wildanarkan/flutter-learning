import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt data = 0.obs;

  void changed()=> data++;

  @override
  void onInit() {
    //Setiap kali ada perubahan akan ada selalu mengeksekusi
    // ever(data, (callback) => print("print"));

    //Hanya satu kali eksekusi ketika ada perubahan
    // once(data, (callback) => print("print"));

    //Akan Mengeksekusi setiap kali berhenti selama waktu yang ditentukan
    // debounce(data, (callback) => print("print"), time: Duration(seconds: 5));

    //Akan Mengeksekusi setiap kali ada perubahan selama waktu yang ditentukan
    interval(data, (callback) => print("print"), time: Duration(seconds: 2));
    

    super.onInit();
  }
}