import 'package:esim_error_code/code/error_code.dart';
import 'package:flutter/material.dart';

///CreateDate: 2023/5/18 14:01
///Author: you
///Description:

Map<String, dynamic> extractErrorCode(int detailedCode) {
  final Map<String, dynamic> bundle = {};
  final int operationCode = detailedCode >> 24;
  bundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_OPERATION_CODE] = operationCode;
  if (operationCode == OperationCode.OPERATION_SMDX_SUBJECT_REASON_CODE) {
    final Pair<String, String> decodeSmdxSubjectAndReasonCodeResult =
        decodeSmdxSubjectAndReasonCode(detailedCode);
    bundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE] =
        decodeSmdxSubjectAndReasonCodeResult.first;
    bundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE] =
        decodeSmdxSubjectAndReasonCodeResult.second;
  } else {
    bundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_ERROR_CODE] =
        detailedCode & 0xFFFFFF;
  }
  debugPrint('extractErrorCode bundle = $bundle');
  return bundle;
}

Pair<String, String> decodeSmdxSubjectAndReasonCode(int resultCode) {
  int code = resultCode;
  const int numOfSections = 6;
  const int bitsPerSection = 4;
  const int sectionMask = 0xF;
  final List<int> sections = [];

  // Extracting each section of digits backwards.
  for (int i = 0; i < numOfSections; i++) {
    final int sectionDigit = code & sectionMask;
    sections.add(sectionDigit);
    code = code >> bitsPerSection;
  }
  String subjectCode =
      '${sections.removeLast()}.${sections.removeLast()}.${sections.removeLast()}';
  String reasonCode =
      '${sections.removeLast()}.${sections.removeLast()}.${sections.removeLast()}';

  // drop the leading zeros, e.g 0.1 -> 1, 0.0.3 -> 3, 0.5.1 -> 5.1
  subjectCode = subjectCode.replaceAll(RegExp(r'^(0\.)+'), '');
  reasonCode = reasonCode.replaceAll(RegExp(r'^(0\.)+'), '');
  return Pair(subjectCode, reasonCode);
}

class Pair<T, U> {
  Pair(this.first, this.second);

  final T first;
  final U second;

  static Pair<T, U> create<T, U>(T first, U second) {
    return Pair(first, second);
  }
}
