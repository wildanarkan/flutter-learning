import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(AppIntroduction());
}

class AppIntroduction extends StatelessWidget {
  const AppIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: IntroductionPage());
  }
}

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Selamat Datang Di Wchicken",
          body:
              "Disini kami menyediakan berbagai makanan dan cemilan dengan daging ayam yang segar,sehat, serta berkhasiat",
          image: Center(
            child: Image.asset("assets/image/wchicken.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Title of custom body page",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on "),
              Icon(Icons.edit),
              Text(" to edit a post"),
            ],
          ),
          image: const Center(child: Icon(Icons.android)),
        ),
        PageViewModel(
          title: "Order Cepat!",
          body:
              "Order produk Wchicken dengan Online melalui aplikasi atau Offline dengan mendatangi restaurant kami.",
          image: Center(
            child: Lottie.asset('assets/json/location_resto.json'),
          ),
        )
      ],
      showSkipButton: true,
      skip: Text("Skip"),
      // showBackButton: true,
      // back: Text("Back"),
      showNextButton: true,
      next: Text("Next"),
      done: const Text("Done"),
      onDone: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(judul: "INTRODUCTION SCREEN"),
    );
  }
}
