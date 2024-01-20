import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppNavigation());
}

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "HOME PAGE"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentPage(),));
            }, child: Text("Next Page >>>"))
          ]),
      ),
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "Payment Page"),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PAYMENT PAGE"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop(MaterialPageRoute(builder: (context) => HomePage(),));
              }, child: Text("<<< Back Page")),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => InfomationPage(),));
              }, child: Text("Next Page >>>")),
            ],
          )
        ],
      )),
    );
  }
}

class InfomationPage extends StatelessWidget {
  const InfomationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "Information Page"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Pemesanan Berhasil"),
            ElevatedButton(onPressed: (){Navigator.of(context).pop(MaterialPageRoute(builder: (context) => InfomationPage(),));}, child: Text("Back"))
          ],
        ),
      ),
    );
  }
}