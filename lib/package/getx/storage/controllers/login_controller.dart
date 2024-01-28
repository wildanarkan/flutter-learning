import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login() {
    final box = GetStorage();
    if (emailC.text == "admin@gmail.com" && passC.text == "admin") {
      if(box.read("dataRememberMe") != null){
        box.remove("dataRememberMe");
      }
      if (rememberMe.isTrue) {
        //Simpan data ke local
        box.write("dataRememberMe",
        {
          "email": emailC.text,
          "pass": passC.text,
        });
      }
      Get.offAllNamed("/home");
    } else {
      Get.snackbar("WARNING", "Terjadi kesalahan",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}
