import 'package:api_demo/error_page.dart';
import 'package:api_demo/getx_tut/snackDialogBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Error Page'),
      ),
      backgroundColor: Colors.blue,
      body: CustomErrorPage(
        errorMessage: details.exceptionAsString(),
      ),
    );
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomeTut(),
      getPages: [
        // GetPage(name: name, page: () => page),
        GetPage(name: "/test", page: () => const HomeTut(),),
      ],
    );
  }
}
