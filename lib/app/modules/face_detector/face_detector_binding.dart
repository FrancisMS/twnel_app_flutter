import 'package:get/get.dart';

import 'face_detector_controller.dart';

class MFaceDetectorBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => FaceDetectorController());
  }

}