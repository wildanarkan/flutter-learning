import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "RX VARIABLE"),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text("${homeC.dataInt}")),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () => homeC.tambahDataInt(), child: Text("+")),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () => homeC.kurangiDataInt(),
                      child: Text("-")),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text("${homeC.dataString}")),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () => homeC.ubahNamaLengkap(),
                      child: Text("Ubah Nama")),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () => homeC.ubahNamaPanggilan(),
                      child: Text("Reset")),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text("${homeC.kondisi}")),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () => homeC.ubahKondisi(),
                      child: Text("Ubah Kondisi")),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            children: [
              Expanded(
                child: Obx(() => ListTile(
                      leading: CircleAvatar(
                        child: Text("${homeC.dataMap['id']}"),
                      ),
                      title: Text("${homeC.dataMap['nama']}"),
                      subtitle: Text("${homeC.dataMap['email']}"),
                    )),
              ),
              ElevatedButton(
                  onPressed: () => homeC.ubahDataMap(), child: Text("Ganti")),
            ],
          )
        ],
      ),
    );
  }
}
