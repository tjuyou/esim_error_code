import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

///CreateDate: 2025/2/19 16:30
///Author: you
///Description:

class HomeController extends GetxController {
  final decodeTextEditingController = TextEditingController();

  @override
  void onClose() {
    decodeTextEditingController.dispose();
    super.onClose();
  }
}
