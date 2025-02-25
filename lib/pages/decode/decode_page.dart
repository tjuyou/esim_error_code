import 'package:esim_error_code/code/error_code.dart';
import 'package:esim_error_code/generated/l10n.dart';
import 'package:esim_error_code/pages/decode/DecodeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/app_colors.dart';
import 'code_widget.dart';

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
              children: [
                _buildFailedWidget(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                buildTitle(S.of(context).operation_code_text),
                buildTitle(S.of(context).error_code_text),
                buildTitle(S.of(context).subject_code_text),
                buildTitle(S.of(context).reason_code_text),
              ],
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 10,
                children: [
                  Flexible(
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: controller.operationCodeController,
                      child: ListView.builder(
                        controller: controller.operationCodeController,
                        itemCount: OperationCode.codeList.length,
                        itemBuilder: (BuildContext context, index) {
                          final codeInfo = OperationCode.codeList[index];
                          return CodeWidget(
                            codeName: codeInfo.$1,
                            code: codeInfo.$2.toString(),
                            codeDesc: codeInfo.$3,
                          );
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    child: Card(
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: controller.errorCodeController,
                        child: ListView.builder(
                          controller: controller.errorCodeController,
                          itemCount: ErrorCode.codeInfoList.length,
                          itemBuilder: (context, index) {
                            final codeInfo = ErrorCode.codeInfoList[index];
                            return CodeWidget(
                              codeName: codeInfo.$1,
                              code: codeInfo.$2.toString(),
                              codeDesc: codeInfo.$3,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: controller.subjectCodeController,
                      child: ListView.builder(
                        controller: controller.subjectCodeController,
                        itemCount: subjectCodeMap.length,
                        itemBuilder: (context, index) {
                          final entry = subjectCodeMap.entries.elementAt(index);
                          return CodeWidget(
                            code: entry.key,
                            codeDesc: entry.value,
                          );
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: controller.reasonCodeController,
                      child: ListView.builder(
                        controller: controller.reasonCodeController,
                        itemCount: reasonCodeMap.length,
                        itemBuilder: (context, index) {
                          final entry = reasonCodeMap.entries.elementAt(index);
                          return CodeWidget(
                            code: entry.key,
                            codeDesc: entry.value,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
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
    fontSize: 20, color: Color(0xFF262626), fontWeight: FontWeight.bold);

const subTitleStyle =
    TextStyle(fontSize: 18, color: Color(0xFF262626), height: 1.6);
