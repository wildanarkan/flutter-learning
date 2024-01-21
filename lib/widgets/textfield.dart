import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/mybar.dart';

void main() {
  runApp(AppTextField());
}

class AppTextField extends StatelessWidget {
  const AppTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MyBar(judul: "Text Field"), body: BodyPage());
  }
}

class BodyPage extends StatefulWidget {
  BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  bool isHidden = true;

  TextEditingController emailC = TextEditingController();

  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        TextField(
          controller: emailC,
          textInputAction: TextInputAction.next,
          autocorrect: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email",
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.email),
            prefixIconColor: Colors.blue,
            alignLabelWithHint: true,
            hintText: "contoh@gmail.com",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: passC,
          textInputAction: TextInputAction.next,
          autocorrect: false,
          keyboardType: TextInputType.text,
          obscureText: isHidden,
          decoration: InputDecoration(
              labelText: "Password",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              prefixIcon: Icon(Icons.key),
              prefixIconColor: Colors.blue,
              suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye))),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            print("Email ${emailC.text}, Password : ${passC.text}");
            setState(() {});
          },
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
        )
      ],
    );
  }
}
