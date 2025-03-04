import 'package:flutter/material.dart';

import '../../code/error_code.dart';
import 'code_item_widget.dart';

///CreateDate: 2025/3/3 15:15
///Author: you
///Description:

class CodeWidget extends StatefulWidget {
  const CodeWidget({
    super.key,
    this.showOperation = true,
    this.showError = true,
    this.showSubject = true,
    this.showReason = true,
  });

  final bool showOperation;
  final bool showError;
  final bool showSubject;
  final bool showReason;

  @override
  State<CodeWidget> createState() => _CodeWidgetState();
}

class _CodeWidgetState extends State<CodeWidget> {
  late final ScrollController _operationCodeController;
  late final ScrollController _errorCodeController;
  late final ScrollController _subjectCodeController;
  late final ScrollController _reasonCodeController;

  @override
  void initState() {
    _operationCodeController = ScrollController();
    _errorCodeController = ScrollController();
    _subjectCodeController = ScrollController();
    _reasonCodeController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _operationCodeController.dispose();
    _errorCodeController.dispose();
    _subjectCodeController.dispose();
    _reasonCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        if (widget.showOperation)
          Flexible(
            child: Scrollbar(
              thumbVisibility: true,
              controller: _operationCodeController,
              child: ListView.builder(
                controller: _operationCodeController,
                itemCount: OperationCode.codeList.length,
                itemBuilder: (BuildContext context, index) {
                  final codeInfo = OperationCode.codeList[index];
                  return CodeItemWidget(
                    codeName: codeInfo.$1,
                    code: codeInfo.$2.toString(),
                    codeDesc: codeInfo.$3,
                  );
                },
              ),
            ),
          ),
        if (widget.showError)
          Flexible(
            child: Card(
              child: Scrollbar(
                thumbVisibility: true,
                controller: _errorCodeController,
                child: ListView.builder(
                  controller: _errorCodeController,
                  itemCount: ErrorCode.codeInfoList.length,
                  itemBuilder: (context, index) {
                    final codeInfo = ErrorCode.codeInfoList[index];
                    return CodeItemWidget(
                      codeName: codeInfo.$1,
                      code: codeInfo.$2.toString(),
                      codeDesc: codeInfo.$3,
                    );
                  },
                ),
              ),
            ),
          ),
        if (widget.showSubject)
          Flexible(
            child: Scrollbar(
              thumbVisibility: true,
              controller: _subjectCodeController,
              child: ListView.builder(
                controller: _subjectCodeController,
                itemCount: subjectCodeMap.length,
                itemBuilder: (context, index) {
                  final entry = subjectCodeMap.entries.elementAt(index);
                  return CodeItemWidget(
                    code: entry.key,
                    codeDesc: entry.value,
                  );
                },
              ),
            ),
          ),
        if (widget.showReason)
          Flexible(
            child: Scrollbar(
              thumbVisibility: true,
              controller: _reasonCodeController,
              child: ListView.builder(
                controller: _reasonCodeController,
                itemCount: reasonCodeMap.length,
                itemBuilder: (context, index) {
                  final entry = reasonCodeMap.entries.elementAt(index);
                  return CodeItemWidget(
                    code: entry.key,
                    codeDesc: entry.value,
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
