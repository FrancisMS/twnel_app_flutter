import 'package:get/get.dart';
import 'package:twnel_face_app/app/route/app_routes.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    _setVariables();
  }

  void _setVariables() async {

    await Future.delayed(const Duration(seconds: 4));
    Get.offNamed(AppRoutes.main);

  }


}