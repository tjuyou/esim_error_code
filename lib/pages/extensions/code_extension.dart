import 'package:esim_error_code/code/error_code.dart';
import 'package:get/get.dart';

///CreateDate: 2025/3/4 13:47
///Author: you
///Description:

extension CodeExtension on List<(String, String, String)> {
  (String subjectCode, String reasonCode, String desc)? getDesc(
      String? subjectCode, String? reasonCode) {
    if (subjectCode == null || reasonCode == null) {
      return null;
    }
    return specMap.firstWhereOrNull((e) {
      if (e.$1 == subjectCode && e.$2 == reasonCode) {
        return true;
      }
      return false;
    });
  }
}
