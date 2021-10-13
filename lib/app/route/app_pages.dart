import 'package:get/route_manager.dart';
import 'package:twnel_face_app/app/modules/face_detector/face_detector_binding.dart';
import 'package:twnel_face_app/app/modules/face_detector/face_detector_page.dart';
import 'package:twnel_face_app/app/modules/main/main_binding.dart';
import 'package:twnel_face_app/app/modules/main/main_page.dart';
import 'package:twnel_face_app/app/modules/splash/splash_binding.dart';
import 'package:twnel_face_app/app/modules/splash/splash_page.dart';

import 'app_routes.dart';

class AppPages {

  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashPage(), binding: SplashBinding(), transition: Transition.fadeIn),
    GetPage(name: AppRoutes.main, page: () => const MainPage(), binding: MainBinding(), transition: Transition.fadeIn),
    GetPage(name: AppRoutes.faceDetector, page: () => const FaceDetectorPage(), binding: MFaceDetectorBinding(), transition: Transition.fadeIn),
  ];

}