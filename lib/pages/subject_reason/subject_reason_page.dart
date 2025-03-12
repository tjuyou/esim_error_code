import 'package:esim_error_code/code/error_code.dart';
import 'package:esim_error_code/pages/extensions/code_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/app_colors.dart';
import '../widgets/y_widgets.dart';
import 'subject_reason_controller.dart';
import 'subject_reason_widget.dart';

///CreateDate: 2025/3/4 10:01
///Author: you
///Description:

class SubjectReasonPage extends GetView<SubjectReasonController> {
  const SubjectReasonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
        child: GetBuilder<SubjectReasonController>(
            id: 'subject_reason',
            builder: (logic) {
              if (!context.isPhone) {
                return Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        _buildInputWidget(
                          controller.subjectTextEditingController,
                          'Subject Code',
                        ),
                        _buildInputWidget(
                          controller.reasonTextEditingController,
                          'Reason Code',
                          onSubmitted: (_) =>
                              controller.update(['subject_reason']),
                        ),
                        YButton(
                          label: '解析',
                          onPressed: () =>
                              controller.update(['subject_reason']),
                        ),
                        const SizedBox(width: 50),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 1200),
                          child: SelectableText(
                            specMap
                                    .getDesc(
                                      controller
                                          .subjectTextEditingController.text,
                                      controller
                                          .reasonTextEditingController.text,
                                    )
                                    ?.$3 ??
                                '',
                            maxLines: 2,
                            minLines: 1,
                            style: const TextStyle(
                              fontSize: 18,
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: SubjectReasonWidget(
                        subjectCode:
                            controller.subjectTextEditingController.text,
                        reasonCode: controller.reasonTextEditingController.text,
                      ),
                    ),
                  ],
                );
              } else {
                final dataList = getDataList();
                return ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = dataList[index];
                    return ListTile(
                      title: Text.rich(
                        TextSpan(
                          text: 'subjectCode: ',
                          style: _titleStyle,
                          children: [
                            TextSpan(
                              text: data.$1,
                              style: _codeStyle,
                            ),
                            const TextSpan(
                              text: '   reasonCode: ',
                              style: _titleStyle,
                            ),
                            TextSpan(
                              text: data.$2,
                              style: _codeStyle,
                            ),
                          ],
                        ),
                      ),
                      subtitle: SelectableText(
                        data.$3,
                        style: const TextStyle(
                          color: AppColors.content,
                          fontSize: 15,
                        ),
                      ),
                    );
                  },
                );
              }
            }),
      ),
    );
  }

  Widget _buildInputWidget(
    TextEditingController? textController,
    String hint, {
    ValueChanged<String>? onSubmitted,
  }) {
    return SizedBox(
      width: 200,
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          hintText: hint,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        onSubmitted: onSubmitted,
      ),
    );
  }

  List<(String, String, String)> getDataList() {
    return List.generate(specMap.length, (i) => specMap[i])
      ..sort((a, b) {
        final compare = a.$1.compareTo(b.$1);
        if (compare != 0) {
          return compare;
        }
        return a.$2.compareTo(b.$2);
      });
  }
}

const _titleStyle = TextStyle(
  color: AppColors.primarySecondary,
  fontSize: 16,
);
const _codeStyle = TextStyle(
  color: AppColors.primary,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
