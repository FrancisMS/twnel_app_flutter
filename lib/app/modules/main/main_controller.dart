import 'dart:io';

import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:twnel_face_app/app/route/app_routes.dart';
import 'package:twnel_face_app/app/util/error_util.dart';

class MainController extends GetxController {

  bool _hasCamera = false;

  bool get hasCamera => _hasCamera;

  @override
  void onInit() {
    super.onInit();
    _setVariables();
    _getAvailableCameras();

  }

  void _setVariables() async {

  }

  void onTapButton() {
    _askPermission();
  }

  // Check if the device has available cameras
  void _getAvailableCameras() async {
    List<CameraDescription> _cameras = await availableCameras();

    for (CameraDescription model in _cameras) {
      if (model.lensDirection == CameraLensDirection.front) {
        _hasCamera = true;
        break;
      }
    }

    update();

  }

  void _askPermission() async {
    Map<Permission, PermissionStatus> _permissions = await [Permission.camera, Permission.storage].request();
    if (_permissions[Permission.camera] == PermissionStatus.granted && _permissions[Permission.storage] == PermissionStatus.granted) {
      _goToView();
    } else {
      ErrorUtil.popUpPermissionError(() {
        openAppSettings();
      });
    }
  }

  void _goToView() async {
    var results = await Get.toNamed(AppRoutes.faceDetector);
    if (results != null) {
      File _file = File(results.toString());
      Get.toNamed(AppRoutes.pictureTaken, arguments: _file);
    }
  }


}