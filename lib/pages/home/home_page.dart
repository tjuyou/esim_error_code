import 'package:esim_error_code/res/app_colors.dart';
import 'package:esim_error_code/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../widgets/y_widgets.dart';
import 'home_controller.dart';

///CreateDate: 2025/2/19 16:20
///Author: you
///Description:

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: const Alignment(0, -0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'eSIM错误码查询助手',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            // 搜索框和按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 搜索框
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: _buildInputWidget(
                    controller.decodeTextEditingController,
                    '请输入错误码',
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                // 搜索按钮
                YButton(
                  label: '解析',
                  onPressed: () {
                    Get.toNamed(
                      AppRoutes.decode,
                      parameters: {
                        'code': controller.decodeTextEditingController.text,
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 550,
              // color: Colors.red,
              padding: const EdgeInsets.only(left: 10, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TextButton(
                  //   onPressed: () {},
                  //   child: const Text('根据错误码查询→'),
                  // ),
                  const SizedBox(width: 0),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.decode);
                    },
                    child: const Text('查看详细错误码→'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField _buildInputWidget(
    TextEditingController? textController,
    String hint, {
    TextInputType? keyboardType = TextInputType.number,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return TextField(
      controller: textController,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
