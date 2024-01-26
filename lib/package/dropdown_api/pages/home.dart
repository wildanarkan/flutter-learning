import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/package/dropdown_api/models/city.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import 'package:http/http.dart' as myhttp;
import '../models/province.dart';

class HomePage extends StatelessWidget {

  String? idProv;

  final String apiKey = "2122dd182decfea36cb80a5d8f32d610d582a99cef345f7cb8731b8094ee0449";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "DROPDOWN API"),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<Province>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) => ListTile(
                  title: Text(item.name),
                ),
            ),
            asyncItems: (text) async{
              var response = await myhttp.get(Uri.parse("https://api.binderbyte.com/wilayah/provinsi?api_key=$apiKey"));
              if (response.statusCode != 200) {
                
                return [];
              }
              List allProvince = (json.decode(response.body) as Map<String, dynamic>)["value"];
              List<Province> allModelProvince = [];
          
              allProvince.forEach((element) {
                allModelProvince.add(Province(id: element["id"], name: element["name"]));
              });
          
              return allModelProvince;
            },
            dropdownBuilder: (context, selectedItem) => Text(selectedItem?.name ?? "Belum memilih provinsi"),
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Provinsi",
                hintText: "Pilih provinsi",
                border: OutlineInputBorder()
              ),
            ),
            onChanged: (value) => idProv = value?.id,
          ),
          SizedBox(height: 20,),
          DropdownSearch<City>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) => ListTile(
                  title: Text(item.name),
                ),
            ),
            asyncItems: (text) async{
              var response = await myhttp.get(Uri.parse("https://api.binderbyte.com/wilayah/kabupaten?api_key=$apiKey&id_provinsi=$idProv"));
              if (response.statusCode != 200) {
                
                return [];
              }
              List allCity = (json.decode(response.body) as Map<String, dynamic>)["value"];
              List<City> allModelCity = [];
          
              allCity.forEach((element) {
                allModelCity.add(City(id: element["id"], idProvinsi: element["id_provinsi"],name: element["name"]));
              });
          
              return allModelCity;
            },
            dropdownBuilder: (context, selectedItem) => Text(selectedItem?.name ?? "Belum memilih kota/kabupaten"),
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Kota/Kabupaten",
                hintText: "Pilih Kota/Kabupaten",
                border: OutlineInputBorder()
              ),
            ),
            onChanged: print,
          ),
        ],
      ),
    );
  }
}
