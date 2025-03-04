import 'package:esim_error_code/code/error_code.dart';
import 'package:esim_error_code/generated/l10n.dart';
import 'package:esim_error_code/pages/decode/code_widget.dart';
import 'package:esim_error_code/pages/decode/decode_controller.dart';
import 'package:esim_error_code/pages/widgets/y_widgets.dart';
import 'package:esim_error_code/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/app_colors.dart';

///CreateDate: 2025/2/24 14:03
///Author: you
///Description:

class DecodePage extends GetView<DecodeController> {
  const DecodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    if (controller.showMessage) ...[
                      Row(
                        children: [
                          _buildFailedWidget(),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 15),
                  child: YButton(
                    onPressed: () => Get.toNamed(
                      AppRoutes.subject,
                      parameters: {
                        'subject': controller.subjectCode ?? '',
                        'reason': controller.reasonCode ?? '',
                      },
                    ),
                    label: '根据Subject Code查看详细含义',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                buildTitle(S.of(context).operation_code_text),
                buildTitle(S.of(context).error_code_text),
                buildTitle(S.of(context).subject_code_text),
                buildTitle(S.of(context).reason_code_text),
              ],
            ),
            const Expanded(
              child: CodeWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFailedWidget() {
    final messages = controller.errorMessages;
    final spec = specMap.firstWhereOrNull((value) {
      if (value.$1 == controller.subjectCode &&
          value.$2 == controller.reasonCode) {
        return true;
      }
      return false;
    });
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(messages.title ?? '', style: titleStyle),
        Text(
          messages.bodyText ?? '',
          style: subTitleStyle,
          textAlign: TextAlign.center,
        ),
        Text(
          messages.errorDetails ?? '',
          style: subTitleStyle.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        Text(
          messages.code,
          style: subTitleStyle.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        if (spec != null)
          Text(
            spec.$3,
            style:
                subTitleStyle.copyWith(fontSize: 16, color: AppColors.primary),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }

  Widget buildTitle(String title) {
    return Expanded(
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.primary,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

const titleStyle = TextStyle(
  fontSize: 20,
  color: Color(0xFF262626),
  fontWeight: FontWeight.bold,
);

const subTitleStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF262626),
  height: 1.6,
);
