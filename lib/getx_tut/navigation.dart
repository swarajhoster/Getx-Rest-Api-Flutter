import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationGetx extends StatelessWidget {
  const NavigationGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Navigation'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              //  Push and back arrow
              // Get.to(const NavigateSecond());

              //  Push and skip middle page
              // Get.off(const NavigateSecond());

              //  Push and NO back arrow
              // Get.offAll(const NavigateSecond());
              // Get.offAllNamed(const NavigateSecond());

              // Send data and push screen
              // Get.to(const NavigateSecond(), arguments: "Data Passed");

              // pushNamed
              Get.toNamed(
                "/test",
                arguments: "Data Passed",
              );
            },
            child: const Text('Click Navigate'),
          ),
        ],
      ),
    );
  }
}
