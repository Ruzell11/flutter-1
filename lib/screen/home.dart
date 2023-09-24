import 'package:flutter/material.dart';
import 'package:flutter_1/screen/learn_flutter.dart';
import 'package:flutter_1/screen/login.dart';
import 'package:flutter_1/screen/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  List<Widget> pageScreen = const [LearnFlutter(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coding"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Login();
              }));
            },
            icon: const Icon(Icons.login),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Widgets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: currentPage,
        onTap: (int newPage) {
          setState(() {
            currentPage = newPage;
          });
        },
      ),
      body: pageScreen[currentPage],
    );
  }
}
