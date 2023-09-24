import 'package:flutter/material.dart';

const int itemCount = 20;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${index + 1}'),
          leading: const Icon(Icons.person),
          onTap: () {
            debugPrint('Item ${index + 1} clicked');
          },
        );
      },
    );
  }
}
