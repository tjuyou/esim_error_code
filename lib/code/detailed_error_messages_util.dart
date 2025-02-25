import 'package:esim_error_code/code/error_code.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

///CreateDate: 2023/5/18 9:40
///Author: you
///Description:

class DetailedErrorMessageUtils {
  DetailedErrorMessageUtils({
    required this.context,
    this.carrierName,
    this.csTel,
    this.errorCode = 0,
    this.operationCode = 0,
    this.reasonCode,
    this.subjectCode,
  });

  final BuildContext context;
  final String? carrierName;
  final String? csTel;
  final int errorCode;
  final int operationCode;
  final String? reasonCode;
  final String? subjectCode;

  ErrorMessages getErrorMessages() {
    debugPrint(
      'operationCode = $operationCode | errorCode = $errorCode | subjectCode = $subjectCode | reasonCode = $reasonCode',
    );
    if (operationCode == OperationCode.OPERATION_SMDX_SUBJECT_REASON_CODE) {
      return getSmdxErrorMessages();
    }
    if (operationCode != OperationCode.OPERATION_HTTP ||
        errorCode < 100 ||
        errorCode > 999) {
      return getGeneralErrorMessages();
    }
    return getNoConnectionErrorMessages();
  }

  String getCouldntActivateCarrierTitle() {
    if (carrierName == null || carrierName!.isEmpty) {
      return S.of(context).title_couldnt_activate_carrier_no_name;
    } else {
      return S.of(context).title_couldnt_activate_carrier(carrierName!);
    }
  }

  String? getDefaultAdditionalInfo() => null;

  String getDefaultBodyText() => S.of(context).body_something_went_wrong;

  String? getDefaultErrorDetails() => null;

  String getDefaultTitle() => S.of(context).error_title;

  ErrorMessages getGeneralErrorMessages() {
    String? defaultTitle = getDefaultTitle();
    String? defaultBodyText = getDefaultBodyText();
    String? defaultErrorDetails = getDefaultErrorDetails();
    String? defaultAdditionalInfo = getDefaultAdditionalInfo();
    if ((operationCode == OperationCode.OPERATION_SWITCH ||
            operationCode == OperationCode.OPERATION_DOWNLOAD) &&
        errorCode == ErrorCode.ERROR_CARRIER_LOCKED) {
      defaultTitle = getCouldntActivateCarrierTitle();
      if (carrierName == null || carrierName!.isEmpty) {
        defaultBodyText = S.of(context).body_device_is_locked_no_name;
      } else {
        defaultBodyText = S.of(context).body_device_is_locked(carrierName!);
      }
      if (carrierName == null || carrierName!.isEmpty) {
        defaultErrorDetails =
            S.of(context).detail_contact_carrier_to_unlock_no_name;
      } else if (csTel == null || csTel!.isEmpty) {
        defaultErrorDetails =
            S.of(context).detail_contact_carrier_to_unlock_no_tel(carrierName!);
      } else {
        defaultErrorDetails = S
            .of(context)
            .detail_contact_carrier_to_unlock(carrierName!, csTel!);
      }
    } else if (operationCode == OperationCode.OPERATION_EUICC_GSMA &&
        errorCode == ErrorCode.ERROR_EUICC_INSUFFICIENT_MEMORY) {
      defaultTitle = getCouldntActivateCarrierTitle();
      defaultBodyText = S.of(context).body_not_enough_space_to_download;
      defaultErrorDetails =
          S.of(context).detail_delete_a_profile_before_retrying;
      defaultAdditionalInfo = null;
      return ErrorMessages(
        defaultTitle,
        defaultBodyText,
        defaultErrorDetails,
        defaultAdditionalInfo,
      );
    } else if (operationCode == OperationCode.OPERATION_EUICC_GSMA &&
        errorCode == ErrorCode.ERROR_INSTALL_PROFILE) {
      defaultTitle = getCouldntActivateCarrierTitle();
      defaultBodyText = getIssueWithSimProfileBodyText();
      defaultErrorDetails =
          getProvideInfoToCarrierErrorDetails(operationCode, errorCode);
      return ErrorMessages(
        defaultTitle,
        defaultBodyText,
        defaultErrorDetails,
        defaultAdditionalInfo,
      );
    } else if (operationCode == OperationCode.OPERATION_EUICC_GSMA &&
        !List.generate(18, (index) => index + 10000).contains(errorCode)) {
      final int operateCode = (errorCode & 0xFF0000) >> 16;
      final int euiccResult = errorCode & 0xFFFF;
      defaultTitle = getCouldntActivateCarrierTitle();
      defaultBodyText = getIssueWithSimProfileBodyText();
      defaultErrorDetails = S.of(context).detail_provide_info_to_carrier(
            'operateCode: $operateCode',
            'euiccResult: $euiccResult',
          );
      return ErrorMessages(
        defaultTitle,
        defaultBodyText,
        defaultErrorDetails,
        defaultAdditionalInfo,
      );
    } else if (operationCode == OperationCode.OPERATION_NOTIFICATION) {
      defaultTitle = getDefaultTitle();
      defaultBodyText = getIssueWithSimProfileBodyText();
      defaultErrorDetails = null;
      return ErrorMessages(
        defaultTitle,
        defaultBodyText,
        defaultErrorDetails,
        defaultAdditionalInfo,
      );
    } else {
      if (operationCode == OperationCode.OPERATION_SMDX) {
        if ([
          ErrorCode.ERROR_NO_PROFILES_AVAILABLE,
          ErrorCode.ERROR_CONNECTION_ERROR,
          ErrorCode.ERROR_CERTIFICATE_ERROR,
          ErrorCode.ERROR_INVALID_RESPONSE,
          ErrorCode.ERROR_INVALID_CONFIRMATION_CODE,
        ].contains(errorCode)) {
          defaultTitle = getCouldntActivateCarrierTitle();
          defaultBodyText = getIssueWithSimProfileBodyText();
          defaultErrorDetails =
              getProvideInfoToCarrierErrorDetails(operationCode, errorCode);
          return ErrorMessages(
            defaultTitle,
            defaultBodyText,
            defaultErrorDetails,
            defaultAdditionalInfo,
          );
        }
      }
      if (operationCode == OperationCode.OPERATION_METADATA &&
          errorCode == ErrorCode.ERROR_INVALID_ACTIVATION_CODE) {
        defaultTitle = S.of(context).title_incorrect_qr_code;
        defaultBodyText = S.of(context).body_check_qr_code_or_go_back;
        defaultErrorDetails =
            S.of(context).detail_contact_carrier_for_more_help;
        defaultAdditionalInfo = null;
        return ErrorMessages(
          defaultTitle,
          defaultBodyText,
          defaultErrorDetails,
          defaultAdditionalInfo,
        );
      }
      if (operationCode == OperationCode.OPERATION_METADATA &&
          errorCode == ErrorCode.ERROR_INVALID_PORT) {
        defaultTitle = S.of(context).title_connect_to_wifi;
        defaultBodyText = S.of(context).body_need_wifi_connection;
        defaultErrorDetails = S.of(context).detail_try_adding_again;
      }
      return ErrorMessages(
        defaultTitle,
        defaultBodyText,
        defaultErrorDetails,
        defaultAdditionalInfo,
      );
    }
    defaultAdditionalInfo = null;
    return ErrorMessages(
      defaultTitle,
      defaultBodyText,
      defaultErrorDetails,
      defaultAdditionalInfo,
    );
  }

  ErrorMessages getSmdxErrorMessages() {
    String? defaultTitle = getDefaultTitle();
    String? defaultBodyText = getDefaultBodyText();
    String? defaultErrorDetails = getDefaultErrorDetails();
    String? defaultAdditionalInfo = getDefaultAdditionalInfo();

    if (subjectCode == '8.1' && reasonCode == '4.8') {
      defaultTitle = getCouldntActivateCarrierTitle();
      defaultBodyText = S.of(context).body_not_enough_space_to_download;
      defaultErrorDetails =
          S.of(context).detail_delete_a_profile_before_retrying;
      defaultAdditionalInfo = null;
    } else if (subjectCode == '8.1.1' && reasonCode == '3.8') {
      defaultTitle = getCouldntActivateCarrierTitle();
      defaultBodyText = getIssueWithSimProfileBodyText();
      defaultErrorDetails =
          getProvideInfoToCarrierErrorDetails(subjectCode, reasonCode);
    } else if (subjectCode == '8.2.6' && reasonCode == '3.8') {
      defaultTitle = getCouldntActivateCarrierTitle();
      defaultBodyText = getIssueWithSimProfileBodyText();
      defaultErrorDetails =
          getProvideInfoToCarrierErrorDetails(subjectCode, reasonCode);
    } else if (subjectCode == '8.2.7' && reasonCode == '6.4') {
      defaultTitle = getCouldntActivateCarrierTitle();
      defaultBodyText = getIssueWithSimProfileBodyText();
      defaultErrorDetails =
          getProvideInfoToCarrierErrorDetails(subjectCode, reasonCode);
    } else if (subjectCode == '8.2' && reasonCode == '1.2') {
      defaultTitle = S.of(context).title_profile_already_downloaded;
      if (carrierName == null || carrierName!.isEmpty) {
        defaultBodyText =
            S.of(context).body_make_sure_not_already_downloaded_no_name;
      } else if (csTel == null || csTel!.isEmpty) {
        defaultBodyText = S
            .of(context)
            .body_make_sure_not_already_downloaded_no_tel(carrierName!);
      } else {
        defaultBodyText = S
            .of(context)
            .body_make_sure_not_already_downloaded(carrierName!, csTel!);
      }
      defaultErrorDetails =
          getProvideInfoToCarrierErrorDetails(subjectCode, reasonCode);
    }

    return ErrorMessages(
      defaultTitle,
      defaultBodyText,
      defaultErrorDetails,
      defaultAdditionalInfo,
    );
  }

  String getIssueWithSimProfileBodyText() {
    if (carrierName == null || carrierName!.isEmpty) {
      return S.of(context).body_issue_with_sim_profile_no_name;
    }
    if (csTel == null || csTel!.isEmpty) {
      return S.of(context).body_issue_with_sim_profile_no_tel(carrierName!);
    } else {
      return S.of(context).body_issue_with_sim_profile(carrierName!, csTel!);
    }
  }

  String getProvideInfoToCarrierErrorDetails(dynamic code1, dynamic code2) {
    // String errorCode1, errorCode2;
    // if (code1 is int) {
    //   errorCode1 = "${S.of(context).operation_code_text}: $code1";
    //   errorCode2 = "${S.of(context).error_code_text}: $code2";
    // } else {
    //   errorCode1 = "${S.of(context).subject_code_text}: $code1";
    //   errorCode2 = "${S.of(context).reason_code_text}: $code2";
    // }
    // return S.of(context).detail_provide_info_to_carrier(errorCode1, errorCode2);
    return S.of(context).detail_provide_info_to_carrier1;
  }

  ErrorMessages getNoConnectionErrorMessages() {
    return ErrorMessages(
      S.of(context).title_no_connection,
      S.of(context).body_need_wifi_or_mobile_connection,
      S.of(context).detail_try_adding_again,
      null,
    );
  }
}

class ErrorMessages {
  ErrorMessages(
    this.title,
    this.bodyText,
    this.errorDetails,
    this.additionalInfo,
  );

  final String? title;
  final String? bodyText;
  final String? errorDetails;
  final String? additionalInfo;
  String code = '';
}
