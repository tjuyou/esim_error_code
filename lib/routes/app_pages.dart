import 'package:esim_error_code/pages/decode/decode_page.dart';
import 'package:esim_error_code/pages/home/home_page.dart';
import 'package:esim_error_code/pages/subject_reason/subject_reason_controller.dart';
import 'package:esim_error_code/pages/subject_reason/subject_reason_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/decode/decode_controller.dart';
import 'bindings.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.home;

  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
      transition: Transition.native,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
    GetPage(
      name: AppRoutes.decode,
      page: () => const DecodePage(),
      binding: BindingsBuilder.put(() => DecodeController()),
      transition: Transition.native,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
    GetPage(
      name: AppRoutes.subject,
      page: () => const SubjectReasonPage(),
      binding: BindingsBuilder.put(() => SubjectReasonController()),
      transition: Transition.native,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
  ];

  static final unknownPage = GetPage(
    name: AppRoutes.unknown,
    page: () => const SizedBox(),
  );
}
