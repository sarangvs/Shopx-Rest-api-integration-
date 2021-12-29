
import 'package:get/get.dart';
import 'package:shopx/controller/controller.dart';

Controller controller = Get.put(Controller());
var uri = Uri.parse(
    "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline");