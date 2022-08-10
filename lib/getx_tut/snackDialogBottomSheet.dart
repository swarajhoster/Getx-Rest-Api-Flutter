// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTut extends StatefulWidget {
  const HomeTut({Key? key}) : super(key: key);

  @override
  State<HomeTut> createState() => _HomeTutState();
}

class _HomeTutState extends State<HomeTut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Tutorial'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Welcome",
                  "welcome to enternWala",
                  icon: const Icon(Icons.check),
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.red,
                  backgroundColor: Colors.green,
                );

              },
              child: const Text('Getx SnackBar'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Getx Dialog",
                  content: const Text('Getx Dialog'),
                  actions: [
                    FlatButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                );
              },
              child: const Text('Getx Default Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("Getx Bottom Sheet"),
                          Text("Getx Bottom Sheet"),
                          Text("Getx Bottom Sheet"),
                        ],
                      )),
                );
              },
              child: const Text('Getx BottomSheet'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
