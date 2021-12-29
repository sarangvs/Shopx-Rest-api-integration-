import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopx/models/products.dart';

import '../instance.dart';

class ProductServices {
  static var client = http.Client();

  static

   Future<Products?> getProducts() async {

    try {
      var response = await client.get(uri);
      print("status::${response.body}");
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        print("json Dataaaaa $jsonData");
        return Products.fromJson(jsonData);
      } else{
        return null;
      }
    }catch(e){
      print("rrrrrr$e");
    }
  }
}
