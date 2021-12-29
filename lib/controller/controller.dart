import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopx/instance.dart';
import 'package:shopx/models/products.dart';
import 'package:shopx/services/product_services.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  List productList = <Products>[].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  Future<Products?> getProducts() async {

    try {
      var response = await http.get(uri);
      print("responseProducts isssssssssssssssssssss$response");
      print(response.statusCode);
      if(response.statusCode == 200){
        var jsonData = jsonDecode(response.body) as List;
        print("jsonnnn$jsonData");


       // if(response !=  null){
       //   productList.value = response;
       // }
      }
      // if(responseProducts != null){
      //   productList.value = responseProducts ;
      // }
    }catch(e){
      print("errorrr$e");
    }
  }
}
