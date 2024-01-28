import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:latihan_flutter/package/getx/storage/controllers/login_controller.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

class LoginPage extends StatelessWidget {
  final box = GetStorage();

  LoginController logC = Get.find();
  // final logC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if(box.read("dataRememberMe") != null){
      logC.rememberMe.value = true;
      logC.emailC.text = box.read("dataRememberMe")["email"];
      logC.passC.text = box.read("dataRememberMe")["pass"];
    }
    return Scaffold(
      appBar: MyBar(judul: "LOGIN PAGE"),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: logC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Email"),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() => TextField(
                controller: logC.passC,
                autocorrect: false,
                obscureText: logC.isHidden.value,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: IconButton(
                        onPressed: () => logC.isHidden.toggle(),
                        icon: Icon(Icons.remove_red_eye)),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Obx(() => CheckboxListTile(
                value: logC.rememberMe.value,
                onChanged: (value) => logC.rememberMe.toggle(),
                title: Text("Remember me"),
                controlAffinity: ListTileControlAffinity.leading,
              )),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              logC.login();
            },
            child: Text("LOGIN"),
          )
        ],
      ),
    );
  }
}
