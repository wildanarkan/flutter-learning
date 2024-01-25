import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppDropDownSearch());
}

class AppDropDownSearch extends StatelessWidget {
  const AppDropDownSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> dataCountry = [
    {
      "country": "Indonesia",
      "id": 1,
    },
    {
      "country": "Malaysia",
      "id": 2,
    },
    {
      "country": "Bekasi",
      "id": 3,
    },
    {
      "country": "Jepang",
      "id": 4,
    },
    {
      "country": "China",
      "id": 5,
    },
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "DROPDOWN SEARCH"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: DropdownSearch<Map<String, dynamic>>(
          popupProps: PopupProps.menu(
            showSearchBox: true,
            
            itemBuilder: (context, item, isSelected) => ListTile(
              title: Text(item["country"].toString()),
              leading: Icon(Icons.location_pin),
            ),
          ),
          clearButtonProps: ClearButtonProps(
            icon: Icon(Icons.clear),
            isVisible: true
          ),
          items: dataCountry,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Country",
              hintText: "country in menu mode",
              
            ),
          ),
          onChanged: print,
          selectedItem: dataCountry[0],
          dropdownBuilder: (context, selectedItem) =>
              Text(selectedItem?["country"].toString() ?? "Belum ada data"),
        ),
      ),
    );
  }
}
