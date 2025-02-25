import 'package:esim_error_code/pages/decode/DecodeController.dart';
import 'package:esim_error_code/pages/decode/decode_page.dart';
import 'package:esim_error_code/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  ];

  static final unknownPage = GetPage(
    name: AppRoutes.unknown,
    page: () => const SizedBox(),
  );
}