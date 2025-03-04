import 'package:flutter/material.dart';
import 'package:get/get.dart';

///CreateDate: 2025/3/4 10:01
///Author: you
///Description:

class SubjectReasonController extends GetxController {
  final subjectTextEditingController = TextEditingController();
  final reasonTextEditingController = TextEditingController();

  @override
  void onInit() {
    subjectTextEditingController.text = Get.parameters['subject'] ?? '';
    reasonTextEditingController.text = Get.parameters['reason'] ?? '';
    super.onInit();
  }

  @override
  void onClose() {
    subjectTextEditingController.dispose();
    reasonTextEditingController.dispose();
    super.onClose();
  }
}
