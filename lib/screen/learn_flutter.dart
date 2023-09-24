import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/coding.jpg'),
          const SizedBox(height: 10),
          const Divider(),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                "This is how we can used widget",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch ? Colors.blueAccent : Colors.grey,
            ),
            onPressed: () {
              debugPrint("elevated button");
            },
            child: const Text(
              "Button",
              style: TextStyle(color: Colors.white),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("elevated button");
            },
            child: const Text(
              "Button",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              debugPrint("elevated button");
            },
            child: const Text("Button", style: TextStyle(color: Colors.red)),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint("Just tap the row ");
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.access_alarm,
                  color: Colors.blueAccent,
                ),
                Text("Row Elem 1"),
                Icon(
                  Icons.account_box,
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: isSwitch,
                onChanged: (bool isNewWidget) {
                  if (!isSwitch) {
                    setState(() {
                      isSwitch = true;
                    });

                    return;
                  }
                  setState(() {
                    isSwitch = false;
                  });
                },
              ),
              const Text("Switch")
            ],
          ),
          isSwitch
              ? Checkbox(
                  value: isCheck,
                  onChanged: (bool? newIsCheck) {
                    setState(() {
                      isCheck = newIsCheck;
                    });
                  })
              : Container(),
          Image.network(
              "https://i.pinimg.com/736x/c2/e2/67/c2e26700b40bf55efa8d0ac05977e5c0--javascript-linux.jpg"),
        ],
      ),
    ));
  }
}
