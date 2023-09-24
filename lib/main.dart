import 'package:flutter/material.dart';
import 'package:flutter_1/screen/home.dart';
import 'package:flutter_1/screen/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColorLight: Colors.white,
      ),
      home: const BodyScreen(),
    );
  }
}

class BodyScreen extends StatefulWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  int currentPage = 0;
  List<Widget> pages = const [Home(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Button Clicked');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onDestinationSelected: (int page) {
          setState(() {
            currentPage = page;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
