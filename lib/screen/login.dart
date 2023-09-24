import 'package:flutter/material.dart';
import 'package:flutter_1/screen/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return const Home();
            },
          ));
        },
        child: const Text("Submit"),
      ),
    ));
  }
}
