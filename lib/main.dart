import 'package:esim_error_code/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'generated/l10n.dart';
import 'res/app_colors.dart';
import 'service/app_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'eSIM错误码查询助手',
      localizationsDelegates: const [
        S.delegate,
        ...GlobalMaterialLocalizations.delegates,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: (location, f) {
        if (location != null) {
          //默认是英文
          if (location.languageCode != 'en' &&
              location.languageCode != 'zh' &&
              location.languageCode != 'es' &&
              location.languageCode != 'ru') {
            location = const Locale('en', 'GB');
            AppService.to.currentLanguageCode.value =
                '${location.languageCode}-${location.countryCode!}';
          } else {
            AppService.to.currentLanguageCode.value = location.languageCode;
            if (location.countryCode != null) {
              AppService.to.currentLanguageCode.value +=
                  '-${location.countryCode!}';
            }
          }
          S.load(location);
        }
        return location;
      },
      getPages: AppPages.pages,
      initialRoute: AppPages.initialPage,
      unknownRoute: AppPages.unknownPage,
      initialBinding: BindingsBuilder.put(() => AppService()),
      builder: (context, child) {
        final root = Theme(
          data: ThemeData(
            useMaterial3: true,
            splashColor: Colors.transparent,
            colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: AppColors.primary,
              onPrimary: Colors.white,
              secondary: AppColors.primarySecondary,
              onSecondary: Colors.white,
              error: AppColors.error,
              onError: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
            scaffoldBackgroundColor: const Color(0xFFFDFDFD),
            listTileTheme: const ListTileThemeData(
              titleTextStyle: TextStyle(color: AppColors.primary),
              subtitleTextStyle: TextStyle(color: AppColors.primarySecondary),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              errorStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
              errorMaxLines: 2,
              hintStyle: TextStyle(
                fontSize: 15,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                borderSide: BorderSide(color: AppColors.primary, width: 2),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                borderSide: BorderSide(color: AppColors.primary, width: 2),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                borderSide: BorderSide(color: AppColors.primary, width: 2),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                borderSide: BorderSide(color: AppColors.primary, width: 2),
              ),
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: AppColors.primary,
              selectionColor: AppColors.selection.withValues(alpha: 0.3),
            ),
          ),
          child: child!,
        );
        return EasyLoading.init().call(context, root);
      },
    );
  }
}
