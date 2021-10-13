import 'package:get/get.dart';

import 'picture_taken_controller.dart';

class PictureTakenBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => PictureTakenController());
  }

}