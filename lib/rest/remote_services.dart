// ignore_for_file: body_might_complete_normally_nullable

import 'package:api_demo/rest/posts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteService extends GetxController {
  // var productList = List<Product>().obs;

  // var productList = <Model>[].obs; // Always the recommended way.

  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
