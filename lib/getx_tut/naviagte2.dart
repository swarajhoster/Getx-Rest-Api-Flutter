import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigateSecond extends StatefulWidget {
  const NavigateSecond({Key? key}) : super(key: key);

  @override
  State<NavigateSecond> createState() => _NavigateSecondState();
}

class _NavigateSecondState extends State<NavigateSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Navigation'),
      ),
      body: Column(
        children: [
          Text("Data : ${Get.arguments.toString()}"),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Click To go back'),
          ),
        ],
      ),
    );
  }
}
