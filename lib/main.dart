import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/modules/splash/splash_binding.dart';
import 'app/modules/splash/splash_page.dart';
import 'app/route/app_pages.dart';
import 'app/theme/my_colors.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: MyColors.background,
        ),
        fontFamily: GoogleFonts.quicksand().fontFamily,
        bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.transparent
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: GlowRemover(),
          child: child!,
        );
      },
    );
  }
}

class GlowRemover extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    const GlowingOverscrollIndicator(
      color: Colors.transparent,
      axisDirection: AxisDirection.up,
    );
    return child;
  }
}