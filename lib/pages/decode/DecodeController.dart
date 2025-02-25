import 'package:esim_error_code/code/detailed_error_messages_util.dart';
import 'package:esim_error_code/code/error_code.dart';
import 'package:esim_error_code/code/extract_util.dart';
import 'package:esim_error_code/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///CreateDate: 2025/2/24 14:03
///Author: you
///Description:

class DecodeController extends GetxController {
  final operationCodeController = ScrollController();
  final errorCodeController = ScrollController();
  final subjectCodeController = ScrollController();
  final reasonCodeController = ScrollController();

  late final int? _errorCode;
  late final ErrorMessages errorMessages;

  int? operationCode;
  String? errorCode;
  String? subjectCode;
  String? reasonCode;

  @override
  void onInit() {
    final arguments = Get.parameters['code'];
    _errorCode = int.tryParse(arguments ?? '0');
    errorMessages = getErrorMessage(_errorCode ?? 0);
    super.onInit();
  }

  @override
  void onClose() {
    operationCodeController.dispose();
    errorCodeController.dispose();
    subjectCodeController.dispose();
    reasonCodeController.dispose();
    super.onClose();
  }

  ErrorMessages getErrorMessage(int detailedCode) {
    final Map<String, dynamic> errorCodeBundle = extractErrorCode(detailedCode);
    operationCode =
        errorCodeBundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_OPERATION_CODE];
    errorCode =
        errorCodeBundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_ERROR_CODE];
    subjectCode = errorCodeBundle[
        EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE];
    reasonCode =
        errorCodeBundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE];
    final errorMessageUtils = DetailedErrorMessageUtils(
        context: Get.context!,
        errorCode:
            errorCodeBundle[EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_ERROR_CODE] ??
                0,
        operationCode: errorCodeBundle[
                EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_OPERATION_CODE] ??
            0,
        reasonCode: errorCodeBundle[
            EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE],
        subjectCode: errorCodeBundle[
            EuiccCode.EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE]);
    var messages = errorMessageUtils.getErrorMessages();
    if (operationCode != null) {
      messages.code += '${S.current.operation_code_text}: $operationCode';
    }
    if (errorCode != null) {
      messages.code += '\n${S.current.error_code_text}: $errorCode';
    }
    if (subjectCode != null) {
      messages.code += '\n${S.current.subject_code_text}: $subjectCode';
    }
    if (reasonCode != null) {
      messages.code += '\n${S.current.reason_code_text}: $reasonCode';
    }
    if (subjectCode != null) {
      messages.code += '\n${subjectCodeMap[subjectCode]}';
    }
    if (reasonCode != null) {
      messages.code += '  |  ${reasonCodeMap[reasonCode]}';
    }
    return messages;
  }
}
